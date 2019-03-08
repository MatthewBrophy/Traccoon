require 'pry'
class Raccoon < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  has_many :raccoon_parties
  has_many :reports, through: :raccoon_parties
  has_many :locations, through: :reports
  has_many :neighborhoods, through: :locations

  def favorite_neighborhood
    neighborhoods_visited = self.neighborhoods
    neighborhood_id = neighborhoods_visited.ids.max_by { |i| neighborhoods_visited.count(i) }
    Neighborhood.find(neighborhood_id).name
  end
  
  
  def sightings
    sightings_collection = []
    self.locations.each {|i| sightings_collection << i.address}
    sightings_collection
  end
  
  def gmaps_sightings
    sightings_collection = []
    self.locations.each {|i| sightings_collection << i.address}
    sightings_collection.map {|address| 
      breakdown = address.split(",")
      number_and_street = breakdown[0].gsub(" ","+")
      breakdown.shift
      city_and_state = breakdown.map {|i| i.strip}.join("+")
      "#{number_and_street},#{city_and_state}"}
  end

  
  
  def sizes
    ["small", "medium", "large", "massive"]
  end

  def genders
    ["male", "female"]
  end

  def dispositions
    ["friendly", "shy", "aggressive", "loving", "defensive"]
  end
end
