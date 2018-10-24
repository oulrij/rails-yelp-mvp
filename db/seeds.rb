# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating 20 fake restaurants...'
20.times do
  restaurant = Restaurant.new(
    name:   Faker::StarWars.planet,
    address: "#{Faker::Address.full_address}, #{Faker::Address.country}",
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian'].sample
  )
  restaurant.save!
end
puts 'Finished!'
