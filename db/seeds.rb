# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Zombie.destroy_all
Zombie.create(username:"livingit", email:"livmoore", password:"password", image:File.new("app/assets/images/Gwen.jpg"), fav_hot_sauce:"Sriracha")