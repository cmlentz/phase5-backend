# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.destroy_all

customer1= Customer.create(name: "#{Faker::Name.first_name}", age: 21, email: "#{Faker::Internet.email}", city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
customer2= Customer.create(name: "#{Faker::Name.first_name}", age: 21, email: "#{Faker::Internet.email}", city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
customer3= Customer.create(name: "#{Faker::Name.first_name}", age: 21, email: "#{Faker::Internet.email}", city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
customer4= Customer.create(name: "#{Faker::Name.first_name}", age: 21, email: "#{Faker::Internet.email}", city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
customer5= Customer.create(name: "#{Faker::Name.first_name}", age: 21, email: "#{Faker::Internet.email}", city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
customer6= Customer.create(name: "#{Faker::Name.first_name}", age: 21, email: "#{Faker::Internet.email}", city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
customer7= Customer.create(name: "#{Faker::Name.first_name}", age: 21, email: "#{Faker::Internet.email}", city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
customer8= Customer.create(name: "#{Faker::Name.first_name}", age: 21, email: "#{Faker::Internet.email}", city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
customer9= Customer.create(name: "#{Faker::Name.first_name}", age: 21, email: "#{Faker::Internet.email}", city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
customer10= Customer.create(name: "#{Faker::Name.first_name}", age: 21, email: "#{Faker::Internet.email}", city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")

puts 'Customer seeded...'

Activity.destroy_all

activity1= Activity.create(name: "Bar", age_req: 21, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity2= Activity.create(name: "Restaraunt", age_req: 1, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity3= Activity.create(name: "Movie", age_req: 13, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity4= Activity.create(name: "Concert", age_req: 16, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity5= Activity.create(name: "Sports Stadium", age_req: 1, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity6= Activity.create(name: "Museum", age_req: 1, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")
activity7= Activity.create(name: "Art Gallery", age_req: 1, city: "#{Faker::Address.city}",  state: "#{Faker::Address.state}")



puts 'Activity seeded...'

puts 'Seeding Complete...'