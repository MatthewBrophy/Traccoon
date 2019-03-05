class Location < ApplicationRecord
  belongs_to :neighborhood
  geocoded_by :address
  after_validation :geocode
  
end
