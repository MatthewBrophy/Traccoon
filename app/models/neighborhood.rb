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
end
