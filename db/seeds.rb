require 'faker'

#Destroys all content previsouly created before creating new content
DogSitter.destroy_all
Dog.destroy_all
City.destroy_all
Stroll.destroy_all

#Creates 10 cities in the City table
10.times do |city|
  City.create(city_name: Faker::Address.city)
end
puts "10 fake cities have been generated."

#Creates 20 dogsitter IDs in the DogSitter table linked to the City table
20.times do |dog_sitter|
  DogSitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(18..70), city_id: City.all.sample.id)
end
puts "20 fake dogsitters have been generated."

#Creates 20 dogs in the Dog table linked to the City table
20.times do |dog|
  Dog.create(name: Faker::Name.first_name, race: Faker::Creature::Dog.breed, is_dangerous:rand(2), city_id: City.all.sample.id)
end
puts "20 fake dogs have been generated."

#Creates 40 strolls in the Stroll table linked to the Dog and DogSitter tables
40.times do |stroll|
  Stroll.create(dog_sitter_id: DogSitter.all.sample.id, dog_id: Dog.all.sample.id)
end
puts "40 strolls have been generated."
