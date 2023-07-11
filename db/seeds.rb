# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Client.create!(email: "admin@admin", name: "admin", password: "adminadmin") #role: 2
Client.create!(email: "annoymous@catblog.com", name:"annonymous", password: "123456")