# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Activity.destroy_all

activity1= Activity.create(name: "Bar", age_req: 21, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity2= Activity.create(name: "Restaraunt", age_req: 1, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity3= Activity.create(name: "Movie", age_req: 13, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity4= Activity.create(name: "Concert", age_req: 16, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity5= Activity.create(name: "Sports Event", age_req: 1, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity6= Activity.create(name: "Museum", age_req: 1, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity7= Activity.create(name: "Art Gallery", age_req: 1, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")

puts 'Activities seeded...'


Customer.destroy_all

20.times do
  Customer.create(
    name: "#{Faker::Name.first_name}",
    age: (1..99).to_a.sample,
    email: "#{Faker::Internet.email}",
    city: "#{Faker::Address.city}",
    state: "#{Faker::Address.state}",
    activities: Activity.all.sample
  )
end

puts 'Customers seeded...'


puts 'Seeding Complete...'