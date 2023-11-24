require 'faker'
require 'open-uri'

sports_item = ['Basketball', 'Football', 'Tennis Racket', 'Soccer Ball', 'Baseball Glove',
'Golf Clubs', 'Volleyball', 'Hockey Stick', 'Cricket Bat', 'Table Tennis Paddle',
'Softball', 'Bowling Ball', 'Badminton Racquet', 'Rugby Ball', 'Boxing Gloves',
'Skateboard', 'Snowboard', 'Swimming Goggles', 'Treadmill', 'Yoga Mat',
'Dumbbells', 'Bicycle', 'Running Shoes', 'Climbing Harness', 'Frisbee',
'Surfboard', 'Roller Skates', 'Paddleboard', 'Jump Rope', 'Kettlebell',
'Tennis Shoes', 'Foam Roller', 'Resistance Bands', 'Water Bottle', 'Tennis Ball',
'Helmet', 'Basketball Hoop', 'Golf Balls', 'Cycling Helmet', 'Sports Towel',
'Gym Bag', 'Wristbands', 'Headband', 'Swim Cap', 'Referee Whistle',
'Sports Sunglasses', 'Goalie Gloves']

Sale.destroy_all
User.destroy_all
Product.destroy_all

puts "Seeding users..."

user = User.create(first_name: "eduardo", last_name: "segantine", email: "eduardo@gmail.com", password: "123456" )
user2 = User.create(first_name: "stephany", last_name: "santos", email: "ste@gmail.com", password: "123456" )
user3 = User.create(first_name: "felipe", last_name: "freo", email: "felipi@gmail.com", password: "123456" )
user4 = User.create(first_name: "laiz", last_name: "silva", email: "laiz@gmail.com", password: "123456" )
user5 = User.create(first_name: "adriano", last_name: "santos", email: "adriano@gmail.com", password: "123456" )

puts "Seeding products..."

10.times do
<<<<<<< Updated upstream
  product = Product.create!(user_id: user.id, name: sports_item.sample, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price, Faker::Lorem.sentence(word_count: 20), sport: Product::SPORTS.sample)
=======
  product = Product.create!(user_id: user.id, name: Faker::Sport.unique..sport, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price, description: Faker::Lorem.sentence, sport: Product::SPORTS.sample)
>>>>>>> Stashed changes

  image_url = "https://source.unsplash.com/400x400/?sport-items"
  product.photo.attach(io: URI.open(image_url), filename: 'product_image.jpg')
end

<<<<<<< Updated upstream
# 10.times do
#   product = Product.create!(user_id: user2.id, name: sports_item.sample, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price, Faker::Lorem.sentence(word_count: 20), sport: Product::SPORTS.sample)
=======
10.times do
  product = Product.create!(user_id: user2.id, name: Faker::Sport.unique.sport, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price, description: Faker::Lorem.sentence, sport: Product::SPORTS.sample)
>>>>>>> Stashed changes

#   image_url = "https://source.unsplash.com/400x400/?sports"
#   product.photo.attach(io: URI.open(image_url), filename: 'product_image.jpg')
# end

<<<<<<< Updated upstream
# 10.times do
#   product = Product.create!(user_id: user3.id, name: sports_item.sample, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price, Faker::Lorem.sentence(word_count: 20), sport: Product::SPORTS.sample)
=======
10.times do
  product = Product.create!(user_id: user3.id, name: Faker::Sport.unique.sport, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price, description: Faker::Lorem.sentence, sport: Product::SPORTS.sample)
>>>>>>> Stashed changes

#   image_url = "https://source.unsplash.com/400x400/?sports"
#   product.photo.attach(io: URI.open(image_url), filename: 'product_image.jpg')
# end

<<<<<<< Updated upstream
# 10.times do
#   product = Product.create!(user_id: user4.id, name: sports_item.sample, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price, Faker::Lorem.sentence(word_count: 20), sport: Product::SPORTS.sample)
=======
10.times do
  product = Product.create!(user_id: user4.id, name: Faker::Sport.unique.sport, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price, description: Faker::Lorem.sentence, sport: Product::SPORTS.sample)
>>>>>>> Stashed changes

#   image_url = "https://source.unsplash.com/400x400/?sports"
#   product.photo.attach(io: URI.open(image_url), filename: 'product_image.jpg')
# end

<<<<<<< Updated upstream
# 10.times do
#   product = Product.create!(user_id: user5.id, name: sports_item.sample, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price, Faker::Lorem.sentence(word_count: 20), sport: Product::SPORTS.sample)

#   image_url = "https://source.unsplash.com/400x400/?sports"
#   product.photo.attach(io: URI.open(image_url), filename: 'product_image.jpg')
=======
10.times do
  product = Product.create!(user_id: user5.id, name: Faker::Sport.unique.sport, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price, description: Faker::Lorem.sentence, sport: Product::SPORTS.sample)

#   image_url = "https://source.unsplash.com/400x400/?sport-items"
=#   product.photo.attach(io: URI.open(image_url), filename: 'product_image.jpg')
>>>>>>> Stashed changes
# end

puts 'Seeding completed!'
