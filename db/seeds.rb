# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jeff = Owner.find_or_create_by(first_name: "Jeff", last_name: "Marks", age: 24, email: "RealEmail@emails.com")
dan = Owner.find_or_create_by(first_name: "Dan", last_name: "Fyfe", age: 30, email: "FakeEmail@emails.com")
danielle = Owner.find_or_create_by(first_name: "Danielle", last_name: "Jasper", age: 47, email: "VeryRealEmail@emails.com")

bennie = Pet.find_or_create_by(name: "Bennie", species: "dog", owner: jeff)
tessa = Pet.find_or_create_by(name: "Tessa", species: "dog", owner: jeff)
big_redge = Pet.find_or_create_by(name: "Big Redge", species: "cat", owner: dan)
snowflake = Pet.find_or_create_by(name: "Snowflake", species: "cat", owner: danielle)
birdman = Pet.find_or_create_by(name: "Birdman", species: "bird", owner: jeff)
