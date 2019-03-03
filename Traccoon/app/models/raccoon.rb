class Raccoon < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  has_many :raccoon_parties
  has_many :reports, through: :raccoon_parties
  has_many :locations
  has_many :neighborhoods, through: :locations
end
