class User < ApplicationRecord
  has_many :comments
  has_many :raccoons, through: :comments
  has_many :reports
  has_many :neighborhoods, through: :reports
end
