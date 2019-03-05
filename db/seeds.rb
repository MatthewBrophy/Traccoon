require 'faker'

def seed_neighborhoods
  puts "Seeding Neighborhoods"
  Neighborhood.create(name: "Ballard", character: "Urban")
  Neighborhood.create(name: "West Seattle", character: "Coastal")
  Neighborhood.create(name: "Downtown Seattle", character: "Urban")
  Neighborhood.create(name: "Capitol Hill", character: "Urban")
  Neighborhood.create(name: "Queen Anne", character: "Urban")
  Neighborhood.create(name: "Lake City", character: "Urban")
  Neighborhood.create(name: "University District", character: "Urban")
  Neighborhood.create(name: "Wallingford", character: "Urban")
  Neighborhood.create(name: "Shoreline", character: "Suburban")
  puts "Neighborhoods successfully seeded"
end

def seed_users
  puts "Seeding Users"
  20.times do 
    puts "Creating User"
    User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "password", neighborhood: Neighborhood.all.sample.name)
    puts "Successfully Created User"
  end
end

def seed_raccoons
  puts "Seeding Raccoons"
  50.times do
    puts "Creating Raccoon"
    Raccoon.create!(name: Faker::Name.first_name, color: ["Brown", "Black", "Tan", "Grey", "White", "Red"].sample, size: ["small", "medium", "large", "massive"].sample, gender: Faker::Gender.binary_type, favorite_food: Faker::Food.dish, disposition: ["friendly", "shy", "aggressive", "loving", "defensive"].sample, user_id: User.all.sample.id)
    puts "Successfully Created Raccoon"
  end
end

def seed_reports
  puts "Seeding Reports"
  100.times do 
    puts "Creating Report"
    Report.create!(time: Faker::Date.backward(730), user_id: User.all.sample.id, neighborhood_id: Neighborhood.all.sample.id, location_id: Location.all.sample.id)
    puts "Successfully Created Report"
  end
end


#Ballard Locations
def seed_ballard
  puts "Seeding Ballard"
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2011 NW 64th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2034 NW 61st St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2009 NW 64th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2829 NW 59th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1770 NW 58th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2853 NW 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "5603 28th Ave NW, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2643 NW 56th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2227 NW 60th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2410 NW 58th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1525 NW 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "5803 24th Ave NW, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2428 NW 63rd St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1711 NW 65th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2601 NW 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1713 NW 65th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1525 NW 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1763 NW 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1761 NW 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "5616 28th Ave NW, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1751 NW 59th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2410 NW 58th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1525 NW 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "5803 24th Ave NW, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2428 NW 63rd St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1711 NW 65th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "2601 NW 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1713 NW 65th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1525 NW 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1763 NW 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1761 NW 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "5616 28th Ave NW, Seattle, WA")
  Location.create!(neighborhood_id: 1, raccoon_id: Raccoon.all.sample.id, address: "1751 NW 59th St, Seattle, WA")
  puts "Ballard Successfully Seeded"
end

# #West Seattle Locations
def seed_west_seattle
  puts "Seeding West Seattle"
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "4563 40th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "4016 45th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3318 30th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3619 50th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3625 47th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "4110 39th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "4801 SW Hinds St, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3221 SW Avalon Way, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3720 41st Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "4006 35th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3318 30th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "2734 Garlough Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "5243 SW Stevens St, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3261 30th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "4706 SW Stevens St, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3261 40th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "2913 39th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3648 44th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "4444 44th SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "2742 36th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3213 Harbor Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3234 48th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3261 37th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3613 35th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3423 35th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "4014 48th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3035 46th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "2742 36th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3213 Harbor Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3234 48th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3261 37th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3613 35th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3423 35th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "4014 48th Ave SW, Seattle, WA")
  Location.create!(neighborhood_id: 2, raccoon_id: Raccoon.all.sample.id, address: "3035 46th Ave SW, Seattle, WA")
  puts "West Seattle Successfully Seeded"
end

# #Downtown Seattle
def seed_downtown
  puts "Seeding Downtown Seattle"
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2033 2nd Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "1425 Western Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "1415 2nd Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2033 2nd Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2033 2nd Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "1119 1st Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "1500 4th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2000 1st Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "737 Olive Way, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "737 Olive Way, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "737 Olive Way, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2033 2nd Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "909 5th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2033 2nd Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "909 5th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "1107 1st Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "1415 2nd Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2021 1st Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2033 2nd Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2033 Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2030 Western Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2030 Western Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "909 5th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "909 5th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2033 2nd Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "909 5th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "1107 1st Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "1415 2nd Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2021 1st Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2033 2nd Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2033 Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2030 Western Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "2030 Western Ave, Seattle, WA")
  Location.create!(neighborhood_id: 3, raccoon_id: Raccoon.all.sample.id, address: "909 5th Ave, Seattle, WA")
  puts "Downtown Seattle Successfully Seeded"
end

# #Capitol Hill Locations
def seed_cap_hill
  puts "Seeding Capitol Hill"
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "200 17th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "516 E Thomas St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1709 18th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "232 Belmont Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1200 E Republican St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "410 10th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1624 E Mercer St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "601 14th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1802 15th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1410 E Pine St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "921 18th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "211 Summit Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1732 15th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1610 Belmont Ave, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "510 Malden Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "111 13th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "412 10th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "120 21st Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "525 Belmont Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1111 E Pike St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "150 Melrose Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "732 Belmont Pl E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1728 17th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "303 16th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "923 10th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "752 Bellevue Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "714 Bellevue Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1812 12th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "422 11th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1806 12th Ave, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "214 Summit Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "124 17th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1554 17th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "225 Harvard Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "231 Harvard Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "700 E Denny Way, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1128 10th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1128 10th Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "417 E Pine St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "417 E Pine St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "417 E Pine St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "417 E Pine St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "417 E Pine St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "417 E Pine St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "700 E Denny Way, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "917 Harvard Ave E, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1210 E John St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1210 E John St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1210 E John St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1210 E John St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1210 E John St, Seattle, WA")
  Location.create!(neighborhood_id: 4, raccoon_id: Raccoon.all.sample.id, address: "1210 E John St, Seattle, WA")
  puts "Capitol Hill Successfully Seeded"
end

#Queen Anne Locations
def seed_queen_anne
  puts "Seeding Queen Anne"
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "204 Garfield St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "500 W Olympic Pl, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "217 W Prospect St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1401 5th Ave W, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "400 W Mcgraw Pl, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1508 1st Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1415 7th Ave W, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1404 W Boston St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "117 Garfield St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "2604 Mayfair Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "2625 13th Ave W, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "2625 13th Ave W, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "2506 1st Ave W, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1504 1st Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1003 W Prospect St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1937 4th Ave W, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "109 Newell St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "2110 2nd Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1013 W Howe St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "2200 11th Ave W, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1937 4th Ave W, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "109 Newell St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "2110 2nd Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1013 W Howe St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "2200 11th Ave W, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "204 Garfield St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "500 W Olympic Pl, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "217 W Prospect St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1401 5th Ave W, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "400 W Mcgraw Pl, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1508 1st Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "204 Garfield St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "500 W Olympic Pl, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "217 W Prospect St, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1401 5th Ave W, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "400 W Mcgraw Pl, Seattle, WA")
  Location.create!(neighborhood_id: 5, raccoon_id: Raccoon.all.sample.id, address: "1508 1st Ave N, Seattle, WA")
  puts "Successfully Seeded Queen Anne"
end

#Lake City Locations
def seed_lake_city
  puts "Seeding Lake City Locations"
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13770 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13506 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13511 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13733 20th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13325 31st Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13310 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13728 28th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13351 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "2801 NE 130th St, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13024 23rd Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13770 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13506 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13511 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13733 20th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13308 23rd Pl NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13742 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13338 20th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13723 28th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13723 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "3036 NE 133rd St, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13028 28th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13044 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13531 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13704 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "2738 NE 135th St, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13505 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13343 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "12726 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13047 31st Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13021 23rd Pl NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "2602 NE 140th St, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13045 26th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13820 26th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13535 23rd Pl NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13343 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "12726 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13047 31st Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13021 23rd Pl NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "2602 NE 140th St, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13045 26th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13820 26th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13535 23rd Pl NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13044 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13531 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13704 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "2738 NE 135th St, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13505 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13343 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "12726 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13047 31st Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13044 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13531 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13704 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "2738 NE 135th St, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13505 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13343 30th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "12726 27th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 6, raccoon_id: Raccoon.all.sample.id, address: "13047 31st Ave NE, Seattle, WA")
  puts "Successsfully Seeded Lake City"
end

def seed_ud
  puts "Seeding University District Locations"
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5114 24th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5108 24th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "844 NE 59th St, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5110 24th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5324 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4725 15th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4706 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5806 16th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4734 17th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "823 NE 57th St, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5109 Ravenna Pl NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5116 24th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5112 24th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "856 NE 56th St, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4343 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5328 7th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5611 University Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5306 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4204 11th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5322 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5440 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4343 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5331 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5260 12th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4708 18th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5611 University Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5306 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4204 11th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5322 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5440 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4343 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5331 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5260 12th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4708 18th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5611 University Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5306 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4204 11th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5322 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5440 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4343 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5331 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5260 12th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4708 18th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5611 University Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5306 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4204 11th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5322 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5440 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4343 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5331 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5260 12th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4708 18th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5611 University Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5306 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4204 11th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5322 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5440 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4343 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5331 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5260 12th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4708 18th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5611 University Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5306 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4204 11th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5322 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5440 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4343 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5331 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5260 12th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4708 18th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5611 University Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5306 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4204 11th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5322 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5440 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4343 Roosevelt Way NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5331 8th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "5260 12th Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 7, raccoon_id: Raccoon.all.sample.id, address: "4708 18th Ave NE, Seattle, WA")
  puts "Successfully Seeded University District"
end

def seed_wallingford
  puts "Seeding Wallinford Locations"
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "323 NE 55th St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3811 Corliss Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "4912 Stone Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3401 Wallingford Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "2356 N 58th St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "2112 N 38th St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "5218 Kensington Pl N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "5012 Latona Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "5710 Latona Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "5710 Latona Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "337 NE 56th St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "4227 1st Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "4111 Interlake Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "1419 N 53rd St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3401 Wallingford Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3931 2nd Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "4027 Latona Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3811 Ashworth Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "1223 N 49th St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "154 NE 53rd St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "5639 Kirkwood Pl N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3939 Burke Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "4741 Latona Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "2401 N Northlake Way, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3333 Wallingford Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "323 NE 55th St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3811 Corliss Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "4912 Stone Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3401 Wallingford Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "2356 N 58th St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "2112 N 38th St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "5218 Kensington Pl N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "5639 Kirkwood Pl N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3939 Burke Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "4741 Latona Ave NE, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "2401 N Northlake Way, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3333 Wallingford Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "323 NE 55th St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3811 Corliss Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "4912 Stone Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3811 Corliss Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "4912 Stone Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "3401 Wallingford Ave N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "2356 N 58th St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "2112 N 38th St, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "5218 Kensington Pl N, Seattle, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "5639 Kirkwood Pl N, Seattle, WA")
  puts "Successfully Seeded Wallingford"
end

def seed_shoreline
  puts "Seeding Shoreline Locations"
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "1024 NE 180th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1620 N 200th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "18331 12th Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "17611 Ashworth Ave N, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "2324 N 185th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "2132 N 146th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "14717 23rd Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "18121 12th Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1551 NW 195th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "19224 Firlands Way N, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "19315 11th Ave NW, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1416 NW 195th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1145 N 166th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "19335 11th Ave NW, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "18224 24th Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "2322 N 185th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "108 N 183rd St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "15554 Ashworth Ave N, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "18545 Fremont Ave N, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "14539 28th Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "2322 N 185th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "2324 N 185th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "19517 21st Pl NW, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "17521 Densmore Ave N, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "2355 NE 150th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "16747 Ashworth Ave N, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1234 NE Ballinger Pl, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "16709 Fremont Ave N, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "17512 Densmore Ave N, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1812 NW 202nd St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "17550 Wallingford Ave N, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "20005 12th Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "20235 21st Ave NW, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1416 NW 195th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1145 N 166th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "19335 11th Ave NW, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "18224 24th Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "2322 N 185th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "108 N 183rd St, Shoreline, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "1024 NE 180th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1620 N 200th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "18331 12th Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "17611 Ashworth Ave N, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "2324 N 185th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1416 NW 195th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1145 N 166th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "19335 11th Ave NW, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "18224 24th Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "2322 N 185th St, Shoreline, WA")
  Location.create!(neighborhood_id: 8, raccoon_id: Raccoon.all.sample.id, address: "1024 NE 180th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1620 N 200th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "18331 12th Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "17611 Ashworth Ave N, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "2324 N 185th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "2132 N 146th St, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "14717 23rd Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "18121 12th Ave NE, Shoreline, WA")
  Location.create!(neighborhood_id: 9, raccoon_id: Raccoon.all.sample.id, address: "1551 NW 195th St, Shoreline, WA")
  puts "Successfully Seeded Shoreline"
end

def seed_locations
  seed_ballard
  seed_west_seattle
  seed_downtown
  seed_cap_hill
  seed_queen_anne
  seed_lake_city
  seed_ud
  seed_wallingford
  seed_shoreline
end

# seed_locations

def seed_raccoon_parties
  puts "Seeding Raccoon Parties"
  200.times do 
    puts "Raccoon Party!!!!!!"
    RaccoonParty.create(raccoon_id: Raccoon.all.sample.id, report_id: Report.all.sample.id)
  end
  puts "Raccoon Parties have ended :(..."
end

seed_neighborhoods
seed_users
seed_raccoons
seed_locations
seed_reports
seed_raccoon_parties
