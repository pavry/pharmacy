# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Taras', email: 'doctor@gmail.com', password: 'chiki-briki', role: "doctor", is_active: true)
User.create(name: 'Anastasia', email: 'nastya@gmail.com', password: 'alalala', role: "pharmacist", is_active: false)

25.times do 
 User.create(
 	name: Faker::Name.name,
 	email: Faker::Internet.email,
 	password: Faker::Internet.password,
 	role: 'customer',
 	is_active: [true, false].sample
 )
end



25.times do 
 Medicine.create(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    description: Faker::Lorem.paragraph,
    age: ['adult', 'young'].sample
 )
end

