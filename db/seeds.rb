# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Created #{restaurant.name}"
end

50.times do
  review = Review.create(
    restaurant_id: rand(1..10),
    content: Faker::Restaurant.review ,
    rating: rand(0..5)
  )
  puts "Created review for #{Restaurant.find(review.restaurant_id).name}"
end

puts "Finished!"
