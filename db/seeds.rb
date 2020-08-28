# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
require "open-uri"
puts "destroying evrething"
Upvote.destroy_all
Favorite.destroy_all
Tag.destroy_all
Dish.destroy_all
Review.destroy_all
Restaurant.destroy_all
User.destroy_all
Cuisine.destroy_all


puts "creating cuisine"
indian = Cuisine.create!(name:'Indian')
img_indian_cuisine = URI.open('https://c4.wallpaperflare.com/wallpaper/869/719/717/cuisine-food-india-indian-wallpaper-preview.jpg')
indian.photo.attach(io: img_indian_cuisine, filename: 'idian_cuisine', content_type: 'image/jpg')

japanese = Cuisine.create!(name:'Japanese')
portuguese = Cuisine.create!(name:'Portuguese')
italian = Cuisine.create!(name:'Italian')
chinese = Cuisine.create!(name:'Chinese')
greek = Cuisine.create!(name:'Greek')
mexican = Cuisine.create!(name:'Mexican')


puts "creating user"
miguel = User.create!(cuisine_id: japanese.id, first_name: "Juan-Miguel", last_name: "Hernandez", email:"miguel@wagon.com" , bio:"I am a specialist on food japanese food ", password:"123456")
juan = User.create!(first_name: "Juan", last_name: "Hernandez", email:"jm@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")
thomas = User.create!(cuisine_id: portuguese.id, first_name: "Thomas", last_name: "Viaules", email:"thomas@wagon.com" , bio:"I am a specialist on food japanese food ", password:"123456")
thom = User.create!(first_name: "Thom", last_name: "Viau", email:"tv@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")
kahina = User.create!(cuisine_id: japanese.id, first_name: "kahina", last_name: "Chelli", email:"kahina@wagon.com" , bio:"I am a specialist on food japanese food ", password:"123456")
ka = User.create!(first_name: "Ka", last_name: " Hina", email:"kc@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")
junior = User.create!(cuisine_id: portuguese.id, first_name: "Junior", last_name: "Rivas", email:"junior@wagon.com" , bio:"I am a specialist on  japanese food ", password:"123456")
jun = User.create!(first_name: "Jun", last_name: "Riv", email:"jr@wagon.com" , bio:"I am a user of Yummy Pallet belongs to portuguese cuisine ", password:"123456")

puts "creating restaurants"
port_rest1 = Restaurant.create!(cuisine: portuguese, name: "Helena", address: "438 McGill, Montréal, Québec H2Y 2G1", phone: "1-514-677-6338" , vegetarian: true)
port_rest2 = Restaurant.create!(cuisine: portuguese, name: "Ma Poule Mouillé", address: "969 Rachel Street East, Montréal, Québec H2J 2J4 Canada", phone: "1-514-522-5175", vegetarian: true)
port_rest3 = Restaurant.create!(cuisine: portuguese, name: "Porto Mar ", address: "201 Place d'Youville, Montreal, Quebec H2Y 2B3 Canada", phone: "1-514-286-5223", vegetarian: false )
port_rest4 = Restaurant.create!(cuisine: portuguese, name: "Romados", address: "115 Rachel E, Montreal, Quebec H2W 1C8 Canada", phone: "1-514-859-1803", vegetarian: false )
port_rest5 = Restaurant.create!(cuisine: portuguese, name: "Portus 360", address: "777, Boulevard Robert Bourassa, Montreal, Quebec H3C 3Z7 Canada", phone: "1-514-849-2070", vegetarian: false )
port_rest6 = Restaurant.create!(cuisine: portuguese, name: "coco rico", address: "3907 St Laurent, Montreal, Quebec H2W 1X9 Canada", phone: "1-514-849-5554", vegetarian: false)
port_rest7 = Restaurant.create!(cuisine: portuguese, name: "Chez Jose", address: "3907 St Laurent, Montreal, Quebec H2W 1X9 Canada", phone: "1-514-663-2381", vegetarian: false)
port_rest8 = Restaurant.create!(cuisine: portuguese, name: "Boca Iberica", address: "3907 St Laurent, Montreal, Quebec H2W 1X9 Canada", phone: "1-514-507-9996", vegetarian: false)
port_rest9 = Restaurant.create!(cuisine: portuguese, name: "Ferreira Cafe", address: "1485, Jeanne Mance Quartier des spectacles, Montreal, Quebec H2X 2J4 Canada", phone: "1-514-848-0988", vegetarian: true)
port_rest10 = Restaurant.create!(cuisine: portuguese, name: "Taverne F ", address: "1485, Jeanne Mance Quartier des spectacles, Montreal, Quebec H2X 2J4 Canada", phone: "1-514-289-4558", vegetarian: false)

japan_rest1 = Restaurant.create!(cuisine: japanese, name: "Saint Sushi Plateau ", address: "424 Duluth Ave E, Montréal, Québec H2L 1A3 Canada", phone: "1-514-507-7537", vegetarian: true)
japan_rest2 = Restaurant.create!(cuisine: japanese, name: "Kyo Bar Japonais", address: "711 Cote de la Place d'Armes, Montréal, Québec H2Y 2X6 Canada", phone: "1-514-282-2711", vegetarian: false)
japan_rest3 = Restaurant.create!(cuisine: japanese, name: "Yakato Yokabai", address: "4185 rue Drolet, Montreal, Quebec H2W 2L5 Canada", phone: "1-514-282-9991")
japan_rest4 = Restaurant.create!(cuisine: japanese, name: "Kazu", address: "1862 Saint Catherine w, Montreal, Quebec H3H 1M1 Canada", phone: "1-514-677-6338")
japan_rest5 = Restaurant.create!(cuisine: japanese, name: "Jatoba", address: "1184 Phillips Place, Montreal, Quebec H3B 3C8 Canada", phone: "1-514-871-1184")
japan_rest6 = Restaurant.create!(cuisine: japanese, name: "Sushi Momo Vegetalien", address: "a valider", phone: "1-514-6776338", vegetarian: true  )
japan_rest7 = Restaurant.create!(cuisine: japanese, name: "Imadake", address: "a valider", phone: "1-514-677-6338")
japan_rest8 = Restaurant.create!(cuisine: japanese, name: "Sho-Dan Restaurant", address: "2020, rue Metcalfe Près du métro Peel, Near Peel Metro, Montreal, Quebec H3A 1X8 Canada", phone: "1-514-987-9987")
japan_rest9 = Restaurant.create!(cuisine: japanese, name: "Kinka Izakaya Montral", address: "1624 Rue Sainte-Catherine Ouest, Montreal, Quebec H3H 2S7 Canada", phone: "1-514-750-1624")
japan_rest10 = Restaurant.create!(cuisine: japanese, name: "Jun L", address: "156 Laurier Ave W, Montreal, Quebec H2T 2N7 Canada", phone: "1-514-276-5864")

indian_rest1 = Restaurant.create!(cuisine: indian, name: "Le 409", address: "409 Rue McGill, Montréal, Québec H2Y 0B5 Canada", phone: "1-514-750-0409", vegetarian: false)
img_indian_rest1 = URI.open('https://www.jeffontheroad.com/wp-content/uploads/2019/01/le-409-restaurant-montreal-menu-jeffontheroad-6.jpg')
indian_rest1.photo.attach(io: img_indian_rest1, filename: 'Le 409', content_type: 'image/jpg')

indian_rest2 = Restaurant.create!(cuisine: indian, name: "Atma", address: "3962 Boul. St-Laurent Corner Duluth Street, Montréal, Québec H2W 1Y3 Canada", phone: "1-514-798-8484", vegetarian: false)
indian_rest3 = Restaurant.create!(cuisine: indian, name: "Resto Darbar", address: "2027 St-Laurent, Montreal, Quebec H2X 2T3 Canada", phone: "1-514-982-3724", vegetarian: true)
indian_rest4 = Restaurant.create!(cuisine: indian, name: "Le Taj", address: "2077 Stanley Street, Montreal, Quebec H3A 1R7 Canada", phone: "1-514-845-9015", vegetarian: true)
indian_rest5 = Restaurant.create!(cuisine: indian, name: "Chez Devi", address: "1450 Crescent St. Above St. Catherine, Qc, Montreal, Quebec H3G 2B6 Canada", phone: "1-514-286-0303")
indian_rest6 = Restaurant.create!(cuisine: indian, name: "Gandhi", address: "230 rue Saint-Paul Ouest Vieux Montreal, Montreal, Quebec H2Y 1Z9 Canada", phone: "1-514-845-5866")
indian_rest7 = Restaurant.create!(cuisine: indian, name: "Thanjai Restaurant", address: "4759 Van Horne, Montreal, Quebec H3W 1H8 Canada", phone: "1-514-419-9696")
indian_rest8 = Restaurant.create!(cuisine: indian, name: "Restaurant Bombay Choupati", address: "5011 Boulevard Des Sources Pierrefonds, Montreal, Quebec H8Y 3E3 Canada", phone: "1-514-421-3130")
indian_rest9 = Restaurant.create!(cuisine: indian, name: "Pushap Sweets", address: "5195 Rue Pare, Montreal, Quebec H4P 1P4 Canada", phone: "1-514-737-4527")
indian_rest10 = Restaurant.create!(cuisine: indian, name: "Kuljit India", address: "1904 Boulevard Thimens, Montreal, Quebec H4R 1J9 Canada", phone: "1-514-745-6975")


italian_rest1 = Restaurant.create!(cuisine: italian, name: "La Campagnola steakhouse italien", address: "Av. Dollard 1708, Montréal, Québec H8N 1T8 Canada", phone: "1-514-363-4066", vegetarian: false)
italian_rest2 = Restaurant.create!(cuisine: italian, name: "II Focolaio", address: "1223 Rue du Square-Phillips, Montréal, Québec H3B 3E9 Canada", phone: "1-514-879-1045", vegetarian: false)
italian_rest3 = Restaurant.create!(cuisine: italian, name: "Bis", address: "1229 Rue de la Montagne, Montreal, Quebec H3G 1Z2 Canada", phone: "1-514-866-3234")
italian_rest4 = Restaurant.create!(cuisine: italian, name: "Salumi Vino", address: "358 rue Notre Dame E., Montreal, Quebec H2Y 1C7 Canada", phone: "1-514-759-0505")
italian_rest5 = Restaurant.create!(cuisine: italian, name: "Le Serpent", address: "257 Prince, Montreal, Quebec H3C 2N4 Canada", phone: "1-514-316-4666")
italian_rest6 = Restaurant.create!(cuisine: italian, name: "Il Campari Centro Restaurant", address: "1177 rue de la Montagne, Montreal, Quebec H3G 1Z2 Canada", phone: "1-514-868-1177")
italian_rest7 = Restaurant.create!(cuisine: italian, name: "Restaurant Epik", address: "171 Rue Saint-Paul Ouest Hotel Épik Montreal, Montreal, Quebec H2Y 1Z5 Canada", phone: "1-514-842-2912")
italian_rest8 = Restaurant.create!(cuisine: italian, name: "Ristorante Quattro", address: "17 Notre-Dame Street West, Montreal, Quebec H2Y 1S5 Canada", phone: "1-514-903-2909")
italian_rest9 = Restaurant.create!(cuisine: italian, name: "Da Vinci Restaurant", address: "1180 Rue Bishop, Montreal, Quebec H3G 2E3 Canada", phone: "1-514-874-2001")
italian_rest10 = Restaurant.create!(cuisine: italian, name: "Le Saint-Jacques", address: "6001, de Jumonville Montreal,QC, Montreal, Quebec H1M 1R5 Canada", phone: "1-514-259-3238")
         
chinese_rest1 = Restaurant.create!(cuisine: chinese, name: "Nouille de Lan Zhou", address: "1006 Boulevard Saint-Laurent, Montreal, Quebec H2Z 1J3 Canada", phone: "1-514-800-2959")
chinese_rest2 = Restaurant.create!(cuisine: chinese, name: "Beijing", address: "92 de la Gauchetière West, Montreal, Quebec H2Z 1C1 Canada", phone: "1-514-861-2003")
chinese_rest3 = Restaurant.create!(cuisine: chinese, name: "Noodle Factory", address: "1018, rue St-urbain, Montreal, Quebec H2Z 1K6 Canada", phone: "1-514-677-6338")
chinese_rest4 = Restaurant.create!(cuisine: chinese, name: "Restaurant Szechuan", address: "400 rue Notre-Dame O, Montreal, Quebec H2Y 1V3 Canada", phone: "1-514-866-8000")
chinese_rest5 = Restaurant.create!(cuisine: chinese, name: "Kim Fung", address: "1111 Rue Saint-Urbain, Montreal, Quebec H2Z 1Y6 Canada", phone: "1-514-878-2888")
chinese_rest6 = Restaurant.create!(cuisine: chinese, name: "Chez Maxime Oriental", address: "1059 St-Laurent, Montreal, Quebec Canada", phone: "1-514-861-2888")
chinese_rest7 = Restaurant.create!(cuisine: chinese, name: "Chez Chili", address: "1050B Rue Clark, Montreal, Quebec H2Z 1K2 Canada", phone: "1-514-904-1767")
chinese_rest8 = Restaurant.create!(cuisine: chinese, name: "Nudo", address: "1055 Saint-Laurent Boulevard, Montreal, Quebec H2Z 1J6 Canada", phone: "1-514-508-9636")
chinese_rest9 = Restaurant.create!(cuisine: chinese, name: "Fung Shing", address: "1102 St Laurent, Montreal, Quebec Canada", phone: "1-514-866-0469")
chinese_rest10 = Restaurant.create!(cuisine: chinese, name: "Mai Xiang Yuan", address: "1084 Saint Laurent, Montreal, Quebec H2Z 1J5 Canada", phone: "1-514-875-1888")

greek_rest1 = Restaurant.create!(cuisine: greek, name: "Philinos", address: "4806, Parc Avenue, Montreal, Quebec H2V 4E6 Canada", phone: "1-514-271-9099")
greek_rest2 = Restaurant.create!(cuisine: greek, name: "Milos", address: "5357 av. du Parc Between rue St-Viateur and av. Fairmont, Montreal, Quebec H2V 4G9 Canada", phone: "1-514-272-3522")
greek_rest3 = Restaurant.create!(cuisine: greek, name: "Yia Sou Greek Grill", address: "5375 Queen Mary Road, Montreal, Quebec H3X 1V1 Canada", phone: "1-514-488-4222")
greek_rest4 = Restaurant.create!(cuisine: greek, name: "Le Jardin De Panos", address: "521 Av Duluth E, Montreal, Quebec H2L 1A8 Canada", phone: "1-514-521-4206")
greek_rest5 = Restaurant.create!(cuisine: greek, name: "Elounda", address: "1818 Boulevard de la Cote-Vertu, Montreal, Quebec H4L 2A6 Canada", phone: "1-514-331-4040")
greek_rest6 = Restaurant.create!(cuisine: greek, name: "Ouzeri", address: "4690 St-Denis, Montreal, Quebec H2J 2L3 Canada", phone: "1-514-845-1336")
greek_rest7 = Restaurant.create!(cuisine: greek, name: "Mythos", address: "5318 Ave Du Parc, Montreal, Quebec H2V 4G7 Canada", phone: "1-514-270-0235")
greek_rest8 = Restaurant.create!(cuisine: greek, name: "Marven's Restaurant", address: "880 Av Ball, Montreal, Quebec H3N 1J7 Canada", phone: "1-514-277-3625")
greek_rest9 = Restaurant.create!(cuisine: greek, name: "La maison Greque", address: "450 Avenue Duluth Est, Montreal, Quebec H2L 1A5 Canada", phone: "1-514-842-0969")
greek_rest10 = Restaurant.create!(cuisine: greek, name: "Marathon Souvlaki", address: "5365 des Jockeys, Montreal, Quebec H4P 2T8 Canada", phone: "1-514-731-6455")


mexican_rest1 = Restaurant.create!(cuisine: mexican, name: "Escondite", address: "1206, Union, Montreal, Quebec H3B 3C4 Canada", phone: "1-514-419-9755")
mexican_rest2 = Restaurant.create!(cuisine: mexican, name: "Cafe Lola Rosa", address: "545 Milton, Montreal, Quebec H2X 1W5 Canada", phone: "1-514-287-9337")
mexican_rest3 = Restaurant.create!(cuisine: mexican, name: "La Capital Tacos", address: "232, Jean Talon, East, Montreal, Quebec H2R 1S7 Canada", phone: "1-514-873-5255")
mexican_rest4 = Restaurant.create!(cuisine: mexican, name: "El Rey del Taco", address: "232, Jean Talon, East, Montreal, Quebec H2R 1S7 Canada", phone: "1-514-274-3336")
mexican_rest5 = Restaurant.create!(cuisine: mexican, name: "Restaurant El Sabor de Mexico", address: "5013 Rue Wellinton Verdun, Montreal, Quebec H4G 1Y1 Canada", phone: "1-514-362-8888")
mexican_rest6 = Restaurant.create!(cuisine: mexican, name: "Grumman 78 ", address: "Around Montreal 630 de Courcelle, Montreal, Quebec, Montreal, Quebec H4C 3C5 Canada", phone: "1-514-290-5125")
mexican_rest7 = Restaurant.create!(cuisine: mexican, name: "Escondite Drummond", address: "1224, Rue Drummond, Montreal, Quebec H3G 1V7 Canada", phone: "1-514-375-5945")
mexican_rest8 = Restaurant.create!(cuisine: mexican, name: "Le Roi du Taco", address: "234 Rue Jean Talon East, Montreal, Quebec H2R 1S7 Canada", phone: "1-514-274-3336")
mexican_rest9 = Restaurant.create!(cuisine: mexican, name: "La tamalera Haute Cuisine de Rue Mexicaine", address: "226 Av. Fairmount o, Montreal, Quebec H2T 2M7 Canada", phone: "1-438-381-5034")
mexican_rest10 = Restaurant.create!(cuisine: mexican, name: "3 amigos", address: "1621 Saint-Denis Rue, Montreal, Quebec H2X 3K3 Canada", phone: "1-514-987-6868")
  
    




puts "creating reviews"

expertreviewone  = Review.create!(restaurant: port_rest1, user: thomas, content:"i reccomended this portuguese restaurant")
expertreviewtwo  = Review.create!(restaurant: port_rest2, user: junior, content:"i recomended this restauran cause Carms love it")

# port_helenaone = Dish.create!(name:"")
# port_helenatwo = Dish.create!(name:"")
# port_helenatree = Dish.create!(name:"")
# port_helenafour = Dish.create!(name:"")
puts "creating dishes"
dish_port_mapoule1 = Dish.create!(name:"Le Tony Alves")
dish_port_mapoule2 = Dish.create!(name:"Le Louis Cyr")


# Dish.create!(name:"")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
# Dish.create!(name:" ")
puts "creating tags"
Tag.create!(dish: dish_port_mapoule1, restaurant: port_rest2, user: thomas)
Tag.create!(dish: dish_port_mapoule2, restaurant: port_rest2, user: junior)


Upvote.create!(restaurant: port_rest2, user: thom)
Upvote.create!(restaurant: port_rest1, user: thom)


Favorite.create!(restaurant:port_rest2, user:thom)
Favorite.create!(restaurant:japan_rest1, user: ka)
Favorite.create!(restaurant:indian_rest1, user: junior)
Favorite.create!(restaurant:indian_rest10, user: junior)
Favorite.create!(restaurant:indian_rest4, user: junior)



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