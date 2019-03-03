class Neighborhood < ApplicationRecord
  has_many :reports
  has_many :raccoons, through: :reports
  has_many :locations
  has_many :raccoons, through: :locations
end
