class Neighborhood < ApplicationRecord
  has_many :reports
  has_many :raccoons, through: :reports
  has_many :locations
  has_many :raccoons, through: :locations

  def unique_raccoons
    self.raccoons.uniq
  end

  def slug
    self.name.gsub(" ", "-").downcase
  end
end
