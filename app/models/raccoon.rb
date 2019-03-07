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

  def sizes
    ["small", "medium", "large", "massive"]
  end

  def genders
    ["male", "female"]
  end

  def dispositions
    ["friendly", "shy", "aggressive", "loving", "defensive"]
  end

  def pictures
    ["raccoon1.jpg", "raccoon2.jpg", "raccoon3.jpg", "raccoon4.jpg", "raccoon5.jpg", "raccoon6.jpg", "raccoon7.jpg", "raccoon8.jpg", "raccoon9.jpg", "raccoon10.jpg", "raccoon11.jpg", "raccoon12.jpg", "raccoon13.jpg", "raccoon14.jpg", "raccoon15.jpg", "raccoon16.jpg", "raccoon17.jpg", "raccoon18.jpg", "raccoon19.jpg", "raccoon20.jpg", "raccoon21.jpg", "raccoon22.jpg", "raccoon23.jpg", "raccoon24.jpg", "raccoon25.jpg", "raccoon26.jpg", "raccoon27.jpg", "raccoon28.jpg", "raccoon29.jpg", "raccoon30.jpg", "raccoon31.jpg"]
  end
end
