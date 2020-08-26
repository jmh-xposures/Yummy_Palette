# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
Upvote.destroy_all
Favorite.destroy_all
Tag.destroy_all
Dish.destroy_all
Review.destroy_all
Restaurant.destroy_all
User.destroy_all
Cuisine.destroy_all



indian = Cuisine.create!(name:'Indian')
japanese = Cuisine.create!(name:'Japanese')
portuguese = Cuisine.create!(name:'Portuguese')
italian = Cuisine.create!(name:'Italian')
chines = Cuisine.create!(name:'Chinese')


miguel = User.create!(cuisine_id: japanese.id, first_name: "Juan-Miguel", last_name: "Hernandez", email:"miguel@wagon.com" , bio:"I am a specialist on food japanese food ", password:"123456")
juan = User.create!(first_name: "Juan", last_name: "Hernandez", email:"jm@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")
thomas = User.create!(cuisine_id: portuguese.id, first_name: "Thomas", last_name: "Viaules", email:"thomas@wagon.com" , bio:"I am a specialist on food japanese food ", password:"123456")
thom = User.create!(first_name: "Thom", last_name: "Viau", email:"tv@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")
kahina = User.create!(cuisine_id: japanese.id, first_name: "kahina", last_name: "Chelli", email:"kahina@wagon.com" , bio:"I am a specialist on food japanese food ", password:"123456")
ka = User.create!(first_name: "Ka", last_name: " Hina", email:"kc@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")
junior = User.create!(cuisine_id: portuguese.id, first_name: "Junior", last_name: "Rivas", email:"junior@wagon.com" , bio:"I am a specialist on  japanese food ", password:"123456")
jun = User.create!(first_name: "Jun", last_name: "Riv", email:"jr@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")

port_rest1 = Restaurant.create!(cuisine: portuguese, name: "Helena", address: "438 McGill, Montréal, Québec H2Y 2G1", phone: "1-514-677-6338" , vegetarian: true)
port_rest2 = Restaurant.create!(cuisine: portuguese, name: "Ma Poule Mouillé", address: "969 Rachel Street East, Montréal, Québec H2J 2J4 Canada", phone: "1-514-522-5175", vegetarian: true)
      #   = Restaurant.create!(cuisine: , name: "", adress: "", phone: "", vegetarian: )
       #  = Restaurant.create!(cuisine: , name: "", adress: "", phone: "", vegetarian: )
        # = Restaurant.create!(cuisine: , name: "", adress: "", phone: "", vegetarian: )

japanese1 = Restaurant.create!(cuisine: japanese, name: "Saint Sushi Plateau ", address: "424 Duluth Ave E, Montréal, Québec H2L 1A3 Canada", phone: "1-514-507-7537", vegetarian: true)
japanese2 = Restaurant.create!(cuisine: japanese, name: "Kyo Bar Japonais", address: "711 Cote de la Place d'Armes, Montréal, Québec H2Y 2X6 Canada", phone: "1-514-282-2711", vegetarian: false)
        # = Restaurant.create!(cuisine: , name: "", adress: "", phone: "", vegetarian: )
       #  = Restaurant.create!(cuisine: , name: "", adress: "", phone: "", vegetarian: )
        # = Restaurant.create!(cuisine: , name: "", adress: "", phone: "", vegetarian: )

indian1 = Restaurant.create!(cuisine: indian, name: "Le 409", address: "409 Rue McGill, Montréal, Québec H2Y 0B5 Canada", phone: "1-514-750-0409", vegetarian: false)
indian2 = Restaurant.create!(cuisine: indian, name: "Atma", address: "3962 Boul. St-Laurent Corner Duluth Street, Montréal, Québec H2W 1Y3 Canada", phone: "1-514-798-8484", vegetarian: false)
         # = Restaurant.create!(cuisine: indian, name: "", adress: "", phone: "", vegetarian: )
         # = Restaurant.create!(cuisine: , name: "", adress: "", phone: "", vegetarian: )
         # = Restaurant.create!(cuisine: , name: "", adress: "", phone: "", vegetarian: )

italian1 = Restaurant.create!(cuisine: italian, name: "La Campagnola steakhouse italien", address: "Av. Dollard 1708, Montréal, Québec H8N 1T8 Canada", phone: "1-514-363-4066", vegetarian: false)
italian2 = Restaurant.create!(cuisine: italian, name: "II Focolaio", address: "1223 Rue du Square-Phillips, Montréal, Québec H3B 3E9 Canada", phone: "1-514-879-1045", vegetarian: false)
         #= Restaurant.create!(cuisine: , name: "", adress: "", phone: "", vegetarian: )
        # = Restaurant.create!(cuisine: , name: "", adress: "", phone: "", vegetarian: )
         #= Restaurant.create!(cuisine: , name: "", adress: "", phone: "", vegetarian: )
         
 # chinese = Restaurant.create!(cuisine: chinese, name: "", adress: "", phone: "", vegetarian: )
        # = Restaurant.create!(cuisine: chinese, name: "", adress: "", phone: "", vegetarian: )
        # = Restaurant.create!(cuisine: chinese, name: "", adress: "", phone: "", vegetarian: )
        # = Restaurant.create!(cuisine: chinese, name: "", adress: "", phone: "", vegetarian: )
        # = Restaurant.create!(cuisine: chinese, name: "", adress: "", phone: "", vegetarian: )
expertreviewone  = Review.create!(restaurant: port_rest1, user: thomas, content:"i reccomended this portuguese restaurant")
expertreviewtwo  = Review.create!(restaurant: port_rest2, user: junior, content:"i recomended this restauran cause Carms love it")

# port_helenaone = Dish.create!(name:"")
# port_helenatwo = Dish.create!(name:"")
# port_helenatree = Dish.create!(name:"")
# port_helenafour = Dish.create!(name:"")

port_mapouleone = Dish.create!(name:"Le Tony Alves")
port_mapouletwo = Dish.create!(name:"Le Louis Cyr")
port_mapouletree = Dish.create!(name:"Le Tremblay")
port_mapoulefour = Dish.create!(name:"São Jorge et chouriço grillé")

# Dish.create!(name:"")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")

Tag.create!(dish: port_mapouleone, restaurant: port_rest2, user: thomas)
Tag.create!(dish:port_mapouletwo, restaurant: port_rest2, user: junior)


Upvote.create!(restaurant: port_rest2, user: thom)
Upvote.create!(restaurant: port_rest1, user: thom)


Favorite.create!(restaurant:port_rest2, user:thom)
Favorite.create!(restaurant:japanese1, user: ka)



#Servi avec frites et salade / Served with fries & salad13.00$
#Le Mike AlvesPoulet, chouriço et Bifana / Chicken, Chouriço & Bifana
#Servi avec frites et salade / Served with fries & salad15.00$
#Le Victor MedinaCuisse de poulet / Chicken Leg
#Servi avec frites et salade / Served with fries & salad11.00$
#Salade FloreaSalade repas / Meal salad
#Servi avec poulet et chouriço / Served with Chicken & Chouriço14.00$
#Salade MatildeSalade avec poulet grillé / Salad with Grilled Chicken
#Regular / Regular12.00$
#Petite salade végé / Small veggie salad3.00$
#CalamarsCalamars grillés / Grilled Calamari
#Servi avec frites et salade / Serv