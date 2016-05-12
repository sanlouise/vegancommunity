# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sandra = User.create!(email: "sandralouisehallie@hotmail.com", password: "What if I do this?", 
first_name: "Sandra", last_name: "Hallie")

Meal.create!(name: "Breakfast")
Meal.create!(name: "Lunch")
Meal.create!(name: "Dinner")

20.times do 
  Recipe.create!(user_id: sandra.id, title: Faker::Book.title, description: Faker::Lorem.paragraph, 
  directions: Faker::Lorem.paragraph, image: Faker::Avatar.image("http://placehold.it/350x350"), meal_id: rand(1..3))
end