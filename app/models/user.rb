class User < ApplicationRecord
  has_many :comments
  has_many :raccoons, through: :comments
  has_many :reports
  has_many :neighborhoods, through: :reports
  belongs_to :home, :class_name => :Neighborhood, foreign_key: :neighborhood_id

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  has_secure_password
  
  def self.most_active_user 
    report_count = 0
    active_user = nil
    @users = User.all 
    @users.each do |user|
      if user.reports.count > report_count
        report_count = user.reports.count 
        active_user = user
      else 
      end
    end
    puts "#{active_user.name} has #{report_count} reports"
  end

end
