class Location < ApplicationRecord
  belongs_to :neighborhood
  belongs_to :raccoon
end
