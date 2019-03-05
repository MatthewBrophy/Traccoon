class Report < ApplicationRecord
  belongs_to :user
  has_one :neighborhood, through: :location
  has_many :raccoon_parties
  has_many :raccoons, through: :raccoon_parties
  belongs_to :location
  accepts_nested_attributes_for :location
end
