# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first
Product.delete_all
Product.create! id: 1, name: 'Truskawka', price: 10.0, description: 'This is example flower 1'
Product.create! id: 2, name: 'Bratek', price: 5.0, description: 'This is example flower 2'
Product.create! id: 3, name: 'Pokrzywa', price: 20.0, description: 'This is example flower 3'

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
