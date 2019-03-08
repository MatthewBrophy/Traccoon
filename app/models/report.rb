require 'pry'
class Report < ApplicationRecord
  belongs_to :user
  has_one :neighborhood, through: :location
  has_many :raccoon_parties
  has_many :raccoons, through: :raccoon_parties
  belongs_to :location
  accepts_nested_attributes_for :location
  validates :time, presence: true

  def report_date
    self.time.strftime(" %B %e, %Y")
  end

  def neighborhood_name
    self.location.neighborhood.name
  end

  def address
    self.location.address
  end

  def gmaps_address
    address = self.address
    breakdown = address.split(",")
    number_and_street = breakdown[0].gsub(" ","+")
    breakdown.shift
    city_and_state = breakdown.map {|i| i.strip}.join("+")
    "#{number_and_street},#{city_and_state}"
  end

  def self.by_neighborhood(neighborhood)
    reports_in_neighborhood = select {|i| i.location.neighborhood.name == neighborhood}
    reports_in_neighborhood
  end

  def self.all_reports_sorted_by_neighborhood
    queen_anne = Report.by_neighborhood("Queen Anne")
    ballard = Report.by_neighborhood("Ballard")
    west_seattle = Report.by_neighborhood("West Seattle")
    downtown = Report.by_neighborhood("Downtown Seattle")
    capitol_hill = Report.by_neighborhood("Capitol Hill")
    lake_city = Report.by_neighborhood("Lake City")
    u_district = Report.by_neighborhood("University District")
    wallingford = Report.by_neighborhood("Wallingford")
    shoreline = Report.by_neighborhood("Shoreline")
    binding.pry
  end
end


