class Location < ApplicationRecord
  belongs_to :neighborhood
  belongs_to :raccoon
  geocoded_by :address
  after_validation :geocode
end
