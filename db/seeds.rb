# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
indian = Cuisine.create(name:'Indian')
japanese = Cuisine.create(name:'Japanese')
portuguese = Cuisine.create(name:'Portuguese')
italian = Cuisine.create(name:'Italian')
miguel = User.create(cuisine: japanese, first_name: "Juan-Miguel", last_name: "Hernandez", email:"miguel@wagon.com" , bio:"I am a specialist on food japanese food ", password:"123456")
juan = User.create(first_name: "Juan", last_name: "Hernandez", email:"jm@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")
thomas = User.create(cuisine: japanese, first_name: "Thomas", last_name: "Viaules", email:"thomas@wagon.com" , bio:"I am a specialist on food japanese food ", password:"123456")
thom = User.create(first_name: "Thom", last_name: "Viau", email:"tv@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")
kahina = User.create(cuisine: japanese, first_name: "kahina", last_name: "Chelli", email:"kahina@wagon.com" , bio:"I am a specialist on food japanese food ", password:"123456")
ka = User.create(first_name: "Ka", last_name: " Hina", email:"kc@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")
junior = User.create(cuisine: japanese, first_name: "Junior", last_name: "Rivas", email:"junior@wagon.com" , bio:"I am a specialist on  japanese food ", password:"123456")
jun = User.create(first_name: "Jun", last_name: "Riv", email:"jr@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")
Restaurant.create(cuisine: portuguese, name: "Helena", address: "438 McGill, Montréal, Québec H2Y 2G1", phone: "1-514-677-6338" , vegetarian: true)
Restaurant.create(cuisine: portuguese, name: "Ma Poule Mouillé", address: "969 Rachel Street East, Montréal, Québec H2J 2J4 Canada", phone: "1-514-522-5175", vegetarian: true)
Restaurant.create(cuisine: japanese, name: "Saint Sushi Plateau ", address: "424 Duluth Ave E, Montréal, Québec H2L 1A3 Canada", phone: "1-514-507-7537", vegetarian: true)
Restaurant.create(cuisine: japanese, name: "Kyo Bar Japonais", address: "711 Cote de la Place d'Armes, Montréal, Québec H2Y 2X6 Canada", phone: "1-514-282-2711", vegetarian: false)
Restaurant.create(cuisine: indian, name: "Le 409", address: "409 Rue McGill, Montréal, Québec H2Y 0B5 Canada", phone: "1-514-750-0409", vegetarian: false)
Restaurant.create(cuisine: indian, name: "Atma", address: "3962 Boul. St-Laurent Corner Duluth Street, Montréal, Québec H2W 1Y3 Canada", phone: "1-514-798-8484", vegetarian: false)
Restaurant.create(cuisine: italian, name: "La Campagnola steakhouse italien", address: "Av. Dollard 1708, Montréal, Québec H8N 1T8 Canada", phone: "1-514-363-4066", vegetarian: false)
Restaurant.create(cuisine: italian, name: "II Focolaio", address: "1223 Rue du Square-Phillips, Montréal, Québec H3B 3E9 Canada", phone: "1-514-879-1045", vegetarian: false)

