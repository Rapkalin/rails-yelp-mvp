# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the database..."
    Restaurant.destroy_all
puts "Database cleaned"

puts "Creating restaurants..."
    surpriz = {name:"Surpriz", address:"16 Villa Gaudelet, 75020", phone_number:"0187676534", category:"french"}
    mammamia = {name:"Mamma Mia", address:"111 Boulevard de Charonne, 75011", phone_number:"0186395534", category:"italian"}
    wagon = {name:"Le Wagon", address:"12 Avenue de Vitry, 75013", phone_number:"0765345621", category:"chinese"}
    catarina = {name:"Catarina", address:"124 rue de Bolivard, 75014", phone_number:"0657342567", category:"italian"}
    pny = {name:"Paris New-York", address:"13 impasse des Pizzas, 75009", phone_number:"0345678921", category:"italian"}
    schwartz = {name:"Schwartz", address:"13 rue des Burgers, 75003", phone_number:"045678943", category:"belgian"}

    [surpriz, mammamia, wagon, catarina, pny, schwartz].each do |attributes|
        restaurant = Restaurant.create!(attributes)
        puts "Created #{restaurant.name}"
    end
puts "Restaurants created"

puts "You are good to go!"
