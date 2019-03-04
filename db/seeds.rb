require 'faker'
User.destroy_all
Neighborhood.destroy_all
Comment.destroy_all
Raccoon.destroy_all
Location.destroy_all
Report.destroy_all

Neighborhood.create(name: "Ballard", character: "Urban")
Neighborhood.create(name: "West Seattle", character: "Coastal")
Neighborhood.create(name: "Downtown Seattle", character: "Urban")
Neighborhood.create(name: "Capitol Hill", character: "Urban")
Neighborhood.create(name: "Queen Anne", character: "Urban")
Neighborhood.create(name: "Fremont", character: "Urban")
Neighborhood.create(name: "Chinatown", character: "Urban")
Neighborhood.create(name: "Wallingford", character: "Urban")
Neighborhood.create(name: "Shoreline", character: "Urban")

20.times do User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "password", neighborhood: Neighborhood.all.sample.name)
end


60.times do Raccoon.create!(name: Faker::Name.first_name, color: Faker::Color.color_name, size: ["small", "medium", "large", "massive"].sample, gender: Faker::Gender.binary_type, alone: Faker::Boolean.boolean(0.2), favorite_food: Faker::Food.dish, disposition: ["friendly", "shy", "aggressive", "loving", "defensive"].sample)
end

