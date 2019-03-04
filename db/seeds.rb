require 'faker'

20.times do User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password", neighborhood: "neighborhood")
end