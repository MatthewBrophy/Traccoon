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
end
