# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Zombie.destroy_all
zombie1= Zombie.create(username:"livingit", email:"livmoore@email.com", password:"password", image:File.new("app/assets/images/Gwen.jpg"), fav_hot_sauce:"Sriracha")
zombie2= Zombie.create(username:"brains4brains", email:"fakeemail@email.com", password:"password", fav_hot_sauce:"Cholula")
