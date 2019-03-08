require 'pry'
class Neighborhood < ApplicationRecord
  has_many :reports
  has_many :raccoons, through: :reports
  has_many :locations
  has_many :raccoons, through: :locations

  def unique_raccoons
    self.raccoons.uniq
  end

  def self.most_raccoons
    raccoon_counts = []
    Neighborhood.all.each do |neighborhood|
    raccoon_counts << neighborhood.raccoons.count
    end
    n = Neighborhood.all.select { |m| m.raccoons.count == raccoon_counts.max}
    n[0].name
  end

  # -Most users per neighbrohood
  def self.most_users_per_neigh
    @users = User.all 
    home_neighborhoods = []
    home_neighborhood_count = 0
    home_neighborhood = nil
    @users.each do |user|
      home_neighborhoods << user.home
      home_neighborhoods.each  do |n|
        if home_neighborhoods.count(n) > home_neighborhood_count
          home_neighborhood_count = home_neighborhoods.count(n)
          home_neighborhood = n.name
        end
      end
    end
    home_neighborhood
  end
end
