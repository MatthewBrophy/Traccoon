class Location < ApplicationRecord
  belongs_to :neighborhood
  has_many :reports
  geocoded_by :address
  after_validation :geocode
  has_many :raccoons, through: :reports
end
