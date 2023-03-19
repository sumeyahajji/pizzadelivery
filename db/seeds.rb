# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
restaurant1 = Restaurant.create(name: "Pizzeria Uno", address: "123 Main St")
restaurant2 = Restaurant.create(name: "Pizza Hut", address: "456 Oak St")
pizza1 = Pizza.create(name: "Pepperoni", ingredient: "pepperoni")
pizza2 = Pizza.create(name: "Margarita", ingredient: "tomatoes and basil")
restaurant1.restaurant_pizzas.create(pizza: pizza1, price: 10)
restaurant1.restaurant_pizzas.create(pizza: pizza2, price: 15)
restaurant2.restaurant_pizzas.create(pizza: pizza1, price: 20)
