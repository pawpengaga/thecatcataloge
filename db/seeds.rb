# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Client.create!(email: "admin@admin", name: "admin", photo: "https://avatarfiles.alphacoders.com/120/120205.png", password: "adminadmin", role:2) #role: 2
# Client.create!(email: "annoymous@catblog.com", photo: "https://i.pinimg.com/474x/a5/3c/99/a53c99cb1bf156a018875c1543fe026b.jpg", name:"annonymous", password: "123456", role: 0)


Article.create!(title: "Gato en patineta", picture: "https://www.rd.com/wp-content/uploads/2021/03/GettyImages-985984802-e1615488865623.jpg", description:"Que gracioso se ve", client_id: 1)
Article.create!(title: "Gato baño", picture: "https://images.pexels.com/photos/4587959/pexels-photo-4587959.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", description:"Que gato mas higienico", client_id: 1)
Article.create!(title: "Gato bonito", picture: "https://hips.hearstapps.com/hmg-prod/images/beautiful-smooth-haired-red-cat-lies-on-the-sofa-royalty-free-image-1678488026.jpg", description:"Asi se ve luego de romper mis cosas", client_id: 1)
Article.create!(title: "Gato tubo", picture: "https://static.india.com/wp-content/uploads/2015/11/089.jpg?impolicy=Medium_Resize&w=1200&h=800", description:"Es el gato mas chistoso de todos", client_id: 1)
Article.create!(title: "Gatos chistosos", picture: "https://121clicks.com/wp-content/uploads/2022/02/funny_cats_featured.jpg", description:"Lo mejor y lo con menos resolución para el final", client_id: 1)