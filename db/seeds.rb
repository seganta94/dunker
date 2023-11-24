require 'faker'
require 'open-uri'

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
  product = Product.create!(user_id: user.id, name: Faker::Sport.unique..sport, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price, description: Faker::Lorem.sentence, sport: Product::SPORTS.sample)

  image_url = "https://source.unsplash.com/400x400/?sport-items"
  product.photo.attach(io: URI.open(image_url), filename: 'product_image.jpg')
end

# 10.times do
#   product = Product.create!(user_id: user2.id, name: Faker::Sport.unique..sport, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price,description: Faker::Lorem.sentence, sport: Product::SPORTS.sample)

#   image_url = "https://source.unsplash.com/400x400/?sports"
#   product.photo.attach(io: URI.open(image_url), filename: 'product_image.jpg')
# end

# 10.times do
#   product = Product.create!(user_id: user3.id, name: Faker::Sport.unique..sport, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price,description: Faker::Lorem.sentence, sport: Product::SPORTS.sample)

#   image_url = "https://source.unsplash.com/400x400/?sports"
#   product.photo.attach(io: URI.open(image_url), filename: 'product_image.jpg')
# end

# 10.times do
#   product = Product.create!(user_id: user4.id, name: Faker::Sport.unique..sport, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price,description: Faker::Lorem.sentence, sport: Product::SPORTS.sample)

#   image_url = "https://source.unsplash.com/400x400/?sports"
#   product.photo.attach(io: URI.open(image_url), filename: 'product_image.jpg')
# end

# 10.times do
#   product = Product.create!(user_id: user5.id, name: Faker::Sport.unique..sport, category: Product::CATEGORIES.sample, brand: Product::BRANDS.sample, condition: Product::CONDITION.sample, price: Faker::Commerce.price,description: Faker::Lorem.sentence, sport: Product::SPORTS.sample)

#   image_url = "https://source.unsplash.com/400x400/?sports"
#   product.photo.attach(io: URI.open(image_url), filename: 'product_image.jpg')
# end

puts 'Seeding completed!'
