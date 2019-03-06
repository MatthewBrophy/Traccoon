class User < ApplicationRecord
  has_many :comments
  has_many :raccoons, through: :comments
  has_many :reports
  has_many :neighborhoods, through: :reports

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  has_secure_password

  

  def comments #see all comments made by a user
    self.comments
  end

  def raccoons_sighted #see all raccoons reported by a user
    self.raccoons
  end

  def neighborhoods #see all neighborhoods in which this user has reported seeing raccoons
    self.neighborhoods
  end

  def reports #see all reports made by a user
    self.reports
  end

  def favorite_raccoon #see which raccoon has been reported the most by a user
  end

  def raccoons_in_neighborhood #see what reports have been created in your area can possibly use current_user neighborhood?
  end
  
end
