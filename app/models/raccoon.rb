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
    Neighborhood.find(neighborhood_id).name if neighborhood_id
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

    # -Favorite food among raccoons
  def self.raccoon_fav_food
    favorite_foods = []
    favorite_food_count = 0
    the_favorite_food = nil
    @raccoons = Raccoon.all 
    @raccoons.each do |raccoon|
      favorite_foods << raccoon.favorite_food
    end
    favorite_foods.each do |food|
      if favorite_foods.count(food) > favorite_food_count 
        favorite_food_count = favorite_foods.count(food)
        the_favorite_food = food
      end
    end
    the_favorite_food
  end

  # -Most popular raccoon - most comments on a single raccoon page
  def self.most_popular_raccoon
    @raccoons = Raccoon.all 
    comment_count = 0
    pop_raccoon = nil
    @raccoons.each do |raccoon|
      if raccoon.comments.count > comment_count
        comment_count = raccoon.comments.count
        pop_raccoon = raccoon.name
      end
    end
    pop_raccoon
  end

  # -Most active raccoon
  def self.most_active_raccoon
    @raccoons = Raccoon.all 
    raccoon_location_count = 0
    raccoon_name = nil 
    @raccoons.each do |r|
      if r.locations.count > raccoon_location_count
        raccoon_location_count = r.locations.count 
        raccoon_name = r.name 
      end 
    end
    raccoon_name
  end

  def pictures
    ["raccoon1.jpg", "raccoon2.jpg", "raccoon3.jpg", "raccoon4.jpg", "raccoon5.jpg", "raccoon6.jpg", "raccoon7.jpg", "raccoon8.jpg", "raccoon9.jpg", "raccoon10.jpg", "raccoon11.jpg", "raccoon12.jpg", "raccoon13.jpg", "raccoon14.jpg", "raccoon15.jpg", "raccoon16.jpg", "raccoon17.jpg", "raccoon18.jpg", "raccoon19.jpg", "raccoon20.jpg", "raccoon21.jpg", "raccoon22.jpg", "raccoon23.jpg", "raccoon24.jpg", "raccoon25.jpg", "raccoon26.jpg", "raccoon27.jpg", "raccoon28.jpg", "raccoon29.jpg", "raccoon30.jpg", "raccoon31.jpg", "raccoon32.jpg", "raccoon33.jpg", "raccoon34.jpg", "raccoon35.jpg", "raccoon36.jpg", "raccoon37.jpg", "raccoon38.jpg", "raccoon39.jpg", "raccoon40.jpg", "raccoon41.jpg", "raccoon42.jpg", "raccoon43.jpg", "raccoon44.jpg", "raccoon45.jpg", "raccoon46.jpg", "raccoon47.jpg", "raccoon48.jpg", "raccoon49.jpg", "raccoon50.jpg", "raccoon51.jpg" ]
  end
end
