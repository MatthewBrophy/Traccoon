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
    puts "Favorite food among raccoons is #{the_favorite_food}"
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
    puts "The raccoon with the most comments is #{pop_raccoon}"
  end
end
