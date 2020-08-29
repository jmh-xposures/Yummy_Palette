# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
require "open-uri"

puts "destroying everything"
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
indian.photo.attach(io: img_indian_cuisine, filename: 'indian_cuisine', content_type: 'image/jpg')

japanese = Cuisine.create!(name:'Japanese')
img_japanese_cuisine = URI.open('https://www.otodoke.fr/wp-content/uploads/2018/05/japan-feat.jpg')
japanese.photo.attach(io: img_japanese_cuisine, filename: 'japanese_cuisine', content_type: 'image/jpg')

portuguese = Cuisine.create!(name:'Portuguese')
img_portuguese_cuisine = URI.open('https://media.restomontreal.ca/blog/5_2020-01-31-1344_blog.jpg')
portuguese.photo.attach(io: img_portuguese_cuisine, filename: 'portuguese_cuisine', content_type: 'image/jpg')

italian = Cuisine.create!(name:'Italian')
img_italian_cuisine = URI.open('https://fondue.bg/wp-content/uploads/2019/09/italiancuisine.jpg')
italian.photo.attach(io: img_italian_cuisine, filename: 'italian_cuisine', content_type: 'image/jpg')

chinese = Cuisine.create!(name:'Chinese')
img_chinese_cuisine = URI.open('https://as1.ftcdn.net/jpg/01/15/26/28/500_F_115262838_Qdfwviyw9ATjw0TNnky95RjvKoQXprj5.jpg')
chinese.photo.attach(io: img_chinese_cuisine, filename: 'chinese_cuisine', content_type: 'image/jpg')

greek = Cuisine.create!(name:'Greek')
img_greek_cuisine = URI.open('https://previews.123rf.com/images/anaumenko/anaumenko1905/anaumenko190500085/123097263-selection-of-traditional-greek-food.jpg')
greek.photo.attach(io: img_greek_cuisine, filename: 'greek_cuisine', content_type: 'image/jpg')

mexican = Cuisine.create!(name:'Mexican')
img_mexican_cuisine = URI.open('https://www.adv-bio.com/wp-content/uploads/shutterstock_395007781__1__gbzwut-e1519314492769.jpg')
mexican.photo.attach(io: img_mexican_cuisine, filename: 'mexican_cuisine', content_type: 'image/jpg')



puts "creating users"
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
img_port_rest1 = URI.open('https://images.lpcdn.ca/924x615/201210/19/601068-vue-interieure-restaurant-helena-situe.jpg')
port_rest1.photo.attach(io: img_port_rest1, filename: 'Helena', content_type: 'image/jpg')

port_rest2 = Restaurant.create!(cuisine: portuguese, name: "Ma Poule Mouillé", address: "969 Rachel Street East, Montréal, Québec H2J 2J4 Canada", phone: "1-514-522-5175", vegetarian: true)
img_port_rest2 = URI.open('https://media.cntraveler.com/photos/5b6dab0d9dc0d5057c463e92/master/pass/Ma-Poule-Mouille%CC%81e_Alison-Slattery__2018_Ma-Poule-Mouillee-0004.jpg')
port_rest2.photo.attach(io: img_port_rest2, filename: 'Ma Poule Mouillé', content_type: 'image/jpg')

port_rest3 = Restaurant.create!(cuisine: portuguese, name: "Porto Mar", address: "201 Place d'Youville, Montreal, Quebec H2Y 2B3 Canada", phone: "1-514-286-5223", vegetarian: false )
img_port_rest3 = URI.open('https://www.bonjourquebec.com/fiche/images/800x600/2df2c04e-a787-4906-b339-912b51572415/restaurant-porto-mar-salle-a-manger.jpg')
port_rest3.photo.attach(io: img_port_rest3, filename: 'Porto Mar', content_type: 'image/jpg')

port_rest4 = Restaurant.create!(cuisine: portuguese, name: "Romados", address: "115 Rachel E, Montreal, Quebec H2W 1C8 Canada", phone: "1-514-859-1803", vegetarian: false )
img_port_rest4 = URI.open('https://foodology.ca/wp-content/uploads/2012/05/rom0inner.jpg')
port_rest4.photo.attach(io: img_port_rest4, filename: 'Romados', content_type: 'image/jpg')

port_rest5 = Restaurant.create!(cuisine: portuguese, name: "Portus 360", address: "777, Boulevard Robert Bourassa, Montreal, Quebec H3C 3Z7 Canada", phone: "1-514-849-2070", vegetarian: false )
img_port_rest5 = URI.open('https://www.debeur.com/site/uploads/news/id1273/Debeur_Portus360-625.jpg')
port_rest5.photo.attach(io: img_port_rest5, filename: 'Portus 360', content_type: 'image/jpg')

port_rest6 = Restaurant.create!(cuisine: portuguese, name: "coco rico", address: "3907 St Laurent, Montreal, Quebec H2W 1X9 Canada", phone: "1-514-849-5554", vegetarian: false)
img_port_rest6 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Coco_Rico_Restaurant_Montr%C3%A9al.jpg/1280px-Coco_Rico_Restaurant_Montr%C3%A9al.jpg')
port_rest6.photo.attach(io: img_port_rest6, filename: 'coco rico', content_type: 'image/jpg')

port_rest7 = Restaurant.create!(cuisine: portuguese, name: "Chez Jose", address: "173 Avenue Duluth E, Montréal, Quebec H2W 1H4 Canada", phone: "1-514-663-2381", vegetarian: false)
img_port_rest7 = URI.open('https://i.pinimg.com/564x/9c/d0/87/9cd087017b69af74766b7c42a626e4fb.jpg')
port_rest7.photo.attach(io: img_port_rest7, filename: 'Chez Jose', content_type: 'image/jpg')

port_rest8 = Restaurant.create!(cuisine: portuguese, name: "Boca Iberica", address: "12 rue Rachel O, Montréal, Quebec H2W 1G1 Canada", phone: "1-514-507-9996", vegetarian: false)
img_port_rest8 = URI.open('https://www.restomontreal.ca/media/blog/boca_iberica-18.jpg')
port_rest8.photo.attach(io: img_port_rest8, filename: 'Boca Iberica', content_type: 'image/jpg')

port_rest9 = Restaurant.create!(cuisine: portuguese, name: "Ferreira Cafe", address: "1485, Jeanne Mance Quartier des spectacles, Montreal, Quebec H2X 2J4 Canada", phone: "1-514-848-0988", vegetarian: true)
img_port_rest9 = URI.open('https://ferreiracafe.com/wp-content/uploads/2015/08/ferreira-1585-1024x683.jpg')
port_rest9.photo.attach(io: img_port_rest9, filename: 'Ferreira Cafe', content_type: 'image/jpg')

port_rest10 = Restaurant.create!(cuisine: portuguese, name: "Taverne F", address: "1108 Boulevard de Maisonneuve O, Montréal, Quebec H3A 1M7 Canada", phone: "1-514-289-4558", vegetarian: false)
img_port_rest10 = URI.open('https://ferreiracafe.com/wp-content/uploads/2015/08/ferreira-1585-1024x683.jpg')
port_rest10.photo.attach(io: img_port_rest10, filename: 'Taverne F', content_type: 'image/jpg')



japan_rest1 = Restaurant.create!(cuisine: japanese, name: "Saint Sushi Plateau", address: "424 Duluth Ave E, Montréal, Québec H2L 1A3 Canada", phone: "1-514-507-7537", vegetarian: true)
img_japan_rest1 = URI.open('https://www.montrealfooddivas.com/wp-content/uploads/2015/11/Saint-Sushi-Bar-Montreal-Restaurant-Sushi-Bar-2.jpg')
japan_rest1.photo.attach(io: img_japan_rest1, filename: 'Saint Sushi Plateau', content_type: 'image/jpg')

japan_rest2 = Restaurant.create!(cuisine: japanese, name: "Kyo Bar Japonais", address: "711 Cote de la Place d'Armes, Montréal, Québec H2Y 2X6 Canada", phone: "1-514-282-2711", vegetarian: false)
img_japan_rest2 = URI.open('https://kyobar.com/wp-content/uploads/img_1508-2000x1333.jpg')
japan_rest2.photo.attach(io: img_japan_rest2, filename: 'Kyo Bar Japonais', content_type: 'image/jpg')

japan_rest3 = Restaurant.create!(cuisine: japanese, name: "Yakato Yokabai", address: "4185 rue Drolet, Montreal, Quebec H2W 2L5 Canada", phone: "1-514-282-9991")
img_japan_rest3 = URI.open('https://i.pinimg.com/originals/82/53/74/82537446696d12fdfdd38931399cc77f.jpg')
japan_rest3.photo.attach(io: img_japan_rest3, filename: 'Yakato Yokabai', content_type: 'image/jpg')

japan_rest4 = Restaurant.create!(cuisine: japanese, name: "Kazu", address: "1862 Saint Catherine w, Montreal, Quebec H3H 1M1 Canada", phone: "1-514-677-6338")
img_japan_rest4 = URI.open('https://www.destinationcentreville.com/sites/default/files/kazu1.jpg')
japan_rest4.photo.attach(io: img_japan_rest4, filename: 'Kazu', content_type: 'image/jpg')

japan_rest5 = Restaurant.create!(cuisine: japanese, name: "Jatoba", address: "1184 Phillips Place, Montreal, Quebec H3B 3C8 Canada", phone: "1-514-871-1184")
img_japan_rest5 = URI.open('https://tastet.ca/wp-content/uploads/2019/04/jatoba-restaurant-centre-ville-montreal-35-1024x683.jpg')
japan_rest5.photo.attach(io: img_japan_rest5, filename: 'Jatoba', content_type: 'image/jpg')

japan_rest6 = Restaurant.create!(cuisine: japanese, name: "Sushi Momo Vegetalien", address: "3609 rue Saint-Denis, Montréal, Quebec H2X 3L6 Canada", phone: "1-514-6776338", vegetarian: true  )
img_japan_rest6 = URI.open('https://portal.restomontreal.ca/sushi-momo/gallery/images/19__419-2020-01-10.jpg')
japan_rest6.photo.attach(io: img_japan_rest6, filename: 'Sushi Momo Vegetalien', content_type: 'image/jpg')

japan_rest7 = Restaurant.create!(cuisine: japanese, name: "Imadake", address: "4006 rue Sainte-Catherine, Westmount, Quebec H3Z 1P2 Canada", phone: "1-514-677-6338")
img_japan_rest7 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/t_Rw8cjz_EiGBNFhe-hUkA/l.jpg')
japan_rest7.photo.attach(io: img_japan_rest7, filename: 'Imadake', content_type: 'image/jpg')

japan_rest8 = Restaurant.create!(cuisine: japanese, name: "Sho-Dan Restaurant", address: "2020, rue Metcalfe Près du métro Peel, Near Peel Metro, Montreal, Quebec H3A 1X8 Canada", phone: "1-514-987-9987")
img_japan_rest8 = URI.open('https://www.sho-dan.com/restaurants/sho-dan-metcalfe/gallery/sho-dan-plancher-principal-no2_large.jpg')
japan_rest8.photo.attach(io: img_japan_rest8, filename: 'Sho-Dan Restaurant', content_type: 'image/jpg')

japan_rest9 = Restaurant.create!(cuisine: japanese, name: "Kinka Izakaya Montreal", address: "1624 Rue Sainte-Catherine Ouest, Montreal, Quebec H3H 2S7 Canada", phone: "1-514-750-1624")
img_japan_rest9 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/nHFVveLBqeiCGy12R2CnRA/l.jpg')
japan_rest9.photo.attach(io: img_japan_rest9, filename: 'Kinka Izakaya Montreal', content_type: 'image/jpg')

japan_rest10 = Restaurant.create!(cuisine: japanese, name: "Jun L", address: "156 Laurier Ave W, Montreal, Quebec H2T 2N7 Canada", phone: "1-514-276-5864")
img_japan_rest10 = URI.open('https://images.lpcdn.ca/435x290/201804/26/1530973-jun-i-ouvert-2005-amenage.jpg')
japan_rest10.photo.attach(io: img_japan_rest10, filename: 'Jun L', content_type: 'image/jpg')



indian_rest1 = Restaurant.create!(cuisine: indian, name: "Le 409", address: "409 Rue McGill, Montréal, Québec H2Y 0B5 Canada", phone: "1-514-750-0409", vegetarian: false)
img_indian_rest1 = URI.open('https://www.jeffontheroad.com/wp-content/uploads/2019/01/le-409-restaurant-montreal-menu-jeffontheroad-6.jpg')
indian_rest1.photo.attach(io: img_indian_rest1, filename: 'Le 409', content_type: 'image/jpg')

indian_rest2 = Restaurant.create!(cuisine: indian, name: "Atma", address: "3962 Boul. St-Laurent Corner Duluth Street, Montréal, Québec H2W 1Y3 Canada", phone: "1-514-798-8484", vegetarian: false)
img_indian_rest2 = URI.open('https://ssmscdn.yp.ca/image/resize/25b5a82e-9b7e-4dee-8059-a1a7fd3b21a1/ypui-d-mp-pic-gal-lg/restaurant-atma-11.jpg')
indian_rest2.photo.attach(io: img_indian_rest2, filename: 'Atma', content_type: 'image/jpg')

indian_rest3 = Restaurant.create!(cuisine: indian, name: "Resto Darbar", address: "2027 St-Laurent, Montreal, Quebec H2X 2T3 Canada", phone: "1-514-982-3724", vegetarian: true)
img_indian_rest3 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0a/e2/09/dd/resto-darbar.jpg')
indian_rest3.photo.attach(io: img_indian_rest3, filename: 'Resto Darbar', content_type: 'image/jpg')

indian_rest4 = Restaurant.create!(cuisine: indian, name: "Le Taj", address: "2077 Stanley Street, Montreal, Quebec H3A 1R7 Canada", phone: "1-514-845-9015", vegetarian: true)
img_indian_rest4 = URI.open('https://images.squarespace-cdn.com/content/v1/5c6f00f5c46f6d367d3a67c5/1556721782452-8PAU5PHI8LZUXK7OV6XX/ke17ZwdGBToddI8pDm48kPg3kkMSlDqGprD-21e6kCJZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIpppx-FWaxK7i6rVdWZNGy6SGN0ZVlswpj22aI6j1zesKMshLAGzx4R3EDFOm1kBS/3.jpg')
indian_rest4.photo.attach(io: img_indian_rest4, filename: 'Le Taj', content_type: 'image/jpg')

indian_rest5 = Restaurant.create!(cuisine: indian, name: "Chez Devi", address: "1450 Crescent St. Above St. Catherine, Qc, Montreal, Quebec H3G 2B6 Canada", phone: "1-514-286-0303")
img_indian_rest5 = URI.open('https://ssmscdn.yp.ca/image/resize/16d4d9af-2414-45cc-a9b4-5465ec292695/ypui-d-mp-pic-gal-lg/devi-restaurant-16.jpg')
indian_rest5.photo.attach(io: img_indian_rest5, filename: 'Chez Devi', content_type: 'image/jpg')

indian_rest6 = Restaurant.create!(cuisine: indian, name: "Gandhi", address: "230 rue Saint-Paul Ouest Vieux Montreal, Montreal, Quebec H2Y 1Z9 Canada", phone: "1-514-845-5866")
img_indian_rest6 = URI.open('https://portal.restomontreal.ca/gandhi/gallery/images/a-restomtl-photo.jpg')
indian_rest6.photo.attach(io: img_indian_rest6, filename: 'Gandhi', content_type: 'image/jpg')

indian_rest7 = Restaurant.create!(cuisine: indian, name: "Thanjai Restaurant", address: "4759 Van Horne, Montreal, Quebec H3W 1H8 Canada", phone: "1-514-419-9696")
img_indian_rest7 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/06/8b/45/98/thanjai-restaurant.jpg')
indian_rest7.photo.attach(io: img_indian_rest7, filename: 'Thanjai Restaurant', content_type: 'image/jpg')

indian_rest8 = Restaurant.create!(cuisine: indian, name: "Restaurant Bombay Choupati", address: "5011 Boulevard Des Sources Pierrefonds, Montreal, Quebec H8Y 3E3 Canada", phone: "1-514-421-3130")
img_indian_rest8 = URI.open('https://img2.10bestmedia.com/Images/Photos/222978/p-4567ky_59_330x220_201407171049.jpg')
indian_rest8.photo.attach(io: img_indian_rest8, filename: 'Restaurant Bombay Choupati', content_type: 'image/jpg')

indian_rest9 = Restaurant.create!(cuisine: indian, name: "Pushap Sweets", address: "5195 Rue Pare, Montreal, Quebec H4P 1P4 Canada", phone: "1-514-737-4527")
img_indian_rest9 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/PZVDdBFH7OucjtjivzLhqA/l.jpg')
indian_rest9.photo.attach(io: img_indian_rest9, filename: 'Pushap Sweets', content_type: 'image/jpg')

indian_rest10 = Restaurant.create!(cuisine: indian, name: "Kuljit India", address: "1904 Boulevard Thimens, Montreal, Quebec H4R 1J9 Canada", phone: "1-514-745-6975")
img_indian_rest10 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/tWCjJkr8hDCRVNGPlGCLWw/l.jpg')
indian_rest10.photo.attach(io: img_indian_rest10, filename: 'Kuljit India', content_type: 'image/jpg')



italian_rest1 = Restaurant.create!(cuisine: italian, name: "La Campagnola steakhouse italien", address: "Av. Dollard 1708, Montréal, Québec H8N 1T8 Canada", phone: "1-514-363-4066", vegetarian: false)
img_italian_rest1 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0d/00/5d/99/photo4jpg.jpg')
italian_rest1.photo.attach(io: img_italian_rest1, filename: 'La Campagnola steakhouse italien', content_type: 'image/jpg')

italian_rest2 = Restaurant.create!(cuisine: italian, name: "II Focolaio", address: "1223 Rue du Square-Phillips, Montréal, Québec H3B 3E9 Canada", phone: "1-514-879-1045", vegetarian: false)
img_italian_rest2 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/06/ca/37/60/il-focolaio-pizza.jpg')
italian_rest2.photo.attach(io: img_italian_rest2, filename: 'II Focolaio', content_type: 'image/jpg')

italian_rest3 = Restaurant.create!(cuisine: italian, name: "Bis", address: "1229 Rue de la Montagne, Montreal, Quebec H3G 1Z2 Canada", phone: "1-514-866-3234")
img_italian_rest3 = URI.open('https://ssmscdn.yp.ca/image/resize/a5434cea-99f0-41d5-9dd0-2d1251fa72af/ypui-d-mp-pic-gal-lg/bis-ristorante-1.jpg')
italian_rest3.photo.attach(io: img_italian_rest3, filename: 'Bis', content_type: 'image/jpg')

italian_rest4 = Restaurant.create!(cuisine: italian, name: "Salumi Vino", address: "358 rue Notre Dame E., Montreal, Quebec H2Y 1C7 Canada", phone: "1-514-759-0505")
img_italian_rest4 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/s1gPQVWts756tI1a1MnHLg/l.jpg')
italian_rest4.photo.attach(io: img_italian_rest4, filename: 'Salumi Vino', content_type: 'image/jpg')

italian_rest5 = Restaurant.create!(cuisine: italian, name: "Le Serpent", address: "257 Prince, Montreal, Quebec H3C 2N4 Canada", phone: "1-514-316-4666")
img_italian_rest5 = URI.open('https://cdn.vox-cdn.com/thumbor/2b4vIZogXpSwgBozCmaG9gkB014=/110x0:1887x1333/1200x800/filters:focal(110x0:1887x1333)/cdn.vox-cdn.com/uploads/chorus_image/image/44419426/serpentnewcomer.0.0.jpg')
italian_rest5.photo.attach(io: img_italian_rest5, filename: 'Le Serpent', content_type: 'image/jpg')

italian_rest6 = Restaurant.create!(cuisine: italian, name: "Il Campari Centro Restaurant", address: "1177 rue de la Montagne, Montreal, Quebec H3G 1Z2 Canada", phone: "1-514-868-1177")
img_italian_rest6 = URI.open('https://www.bonjourquebec.com/fiche/images/800x600/bc438c4d-5885-4e34-882f-ed487127da1b/il-campari-centro-interieur.jpg')
italian_rest6.photo.attach(io: img_italian_rest6, filename: 'Il Campari Centro Restaurant', content_type: 'image/jpg')

italian_rest7 = Restaurant.create!(cuisine: italian, name: "Restaurant Epik", address: "171 Rue Saint-Paul Ouest Hotel Épik Montreal, Montreal, Quebec H2Y 1Z5 Canada", phone: "1-514-842-2912")
img_italian_rest7 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/431lD4ySuj9QjdIMLGHjug/l.jpg')
italian_rest7.photo.attach(io: img_italian_rest7, filename: 'Restaurant Epik', content_type: 'image/jpg')

italian_rest8 = Restaurant.create!(cuisine: italian, name: "Ristorante Quattro", address: "17 Notre-Dame Street West, Montreal, Quebec H2Y 1S5 Canada", phone: "1-514-903-2909")
img_italian_rest8 = URI.open('https://quattrossm.com/wp-content/uploads/2016/03/Quattro_chphse_2.jpg')
italian_rest8.photo.attach(io: img_italian_rest8, filename: 'Ristorante Quattro', content_type: 'image/jpg')

italian_rest9 = Restaurant.create!(cuisine: italian, name: "Da Vinci Restaurant", address: "1180 Rue Bishop, Montreal, Quebec H3G 2E3 Canada", phone: "1-514-874-2001")
img_italian_rest9 = URI.open('https://davinci.ca/wp-content/uploads/2018/07/our-story2-2018-s.jpg')
italian_rest9.photo.attach(io: img_italian_rest9, filename: 'Da Vinci Restaurant', content_type: 'image/jpg')

italian_rest10 = Restaurant.create!(cuisine: italian, name: "Le Saint-Jacques", address: "6001, de Jumonville Montreal,QC, Montreal, Quebec H1M 1R5 Canada", phone: "1-514-259-3238")
img_italian_rest10 = URI.open('https://portal.restomontreal.ca/st-jacques/gallery/images/b-restomtl-photo.jpg')
italian_rest10.photo.attach(io: img_italian_rest10, filename: 'Le Saint-Jacques', content_type: 'image/jpg')



chinese_rest1 = Restaurant.create!(cuisine: chinese, name: "Nouille de Lan Zhou", address: "1006 Boulevard Saint-Laurent, Montreal, Quebec H2Z 1J3 Canada", phone: "1-514-800-2959")
img_chinese_rest1 = URI.open('https://tastet.ca/wp-content/uploads/2019/09/lan-zhou-8-1024x684.jpg')
chinese_rest1.photo.attach(io: img_chinese_rest1, filename: 'Nouille de Lan Zhou', content_type: 'image/jpg')

chinese_rest2 = Restaurant.create!(cuisine: chinese, name: "Beijing", address: "92 de la Gauchetière West, Montreal, Quebec H2Z 1C1 Canada", phone: "1-514-861-2003")
img_chinese_rest2 = URI.open('https://live.staticflickr.com/1340/927894247_89278e75c1_b.jpg')
chinese_rest2.photo.attach(io: img_chinese_rest2, filename: 'Beijing', content_type: 'image/jpg')

chinese_rest3 = Restaurant.create!(cuisine: chinese, name: "Noodle Factory", address: "1018, rue St-urbain, Montreal, Quebec H2Z 1K6 Canada", phone: "1-514-677-6338")
img_chinese_rest3 = URI.open('https://images.lpcdn.ca/924x615/200809/21/9227-comptoir-protege-vitre-cuisinier-prepare.jpg')
chinese_rest3.photo.attach(io: img_chinese_rest3, filename: 'Noodle Factory', content_type: 'image/jpg')

chinese_rest4 = Restaurant.create!(cuisine: chinese, name: "Restaurant Szechuan", address: "400 rue Notre-Dame O, Montreal, Quebec H2Y 1V3 Canada", phone: "1-514-866-8000")
img_chinese_rest4 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/14/bd/ef/45/restaurant-szechuan.jpg')
chinese_rest4.photo.attach(io: img_chinese_rest4, filename: 'Restaurant Szechuan', content_type: 'image/jpg')

chinese_rest5 = Restaurant.create!(cuisine: chinese, name: "Kim Fung", address: "1111 Rue Saint-Urbain, Montreal, Quebec H2Z 1Y6 Canada", phone: "1-514-878-2888")
img_chinese_rest5 = URI.open('https://mobile-img.lpcdn.ca/lpca/924x/eecd3960-d63d-11e9-a65c-0eda3a42da3c.jpg')
chinese_rest5.photo.attach(io: img_chinese_rest5, filename: 'Kim Fung', content_type: 'image/jpg')

chinese_rest6 = Restaurant.create!(cuisine: chinese, name: "Chez Maxime Oriental", address: "1059 St-Laurent, Montreal, Quebec Canada", phone: "1-514-861-2888")
img_chinese_rest6 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0d/4d/9e/8d/beautiful-interior.jpg')
chinese_rest6.photo.attach(io: img_chinese_rest6, filename: 'Chez Maxime Oriental', content_type: 'image/jpg')

chinese_rest7 = Restaurant.create!(cuisine: chinese, name: "Chez Chili", address: "1050B Rue Clark, Montreal, Quebec H2Z 1K2 Canada", phone: "1-514-904-1767")
img_chinese_rest7 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/09/af/d4/5f/photo1jpg.jpg')
chinese_rest7.photo.attach(io: img_chinese_rest7, filename: 'Chez Chili', content_type: 'image/jpg')

chinese_rest8 = Restaurant.create!(cuisine: chinese, name: "Nudo", address: "1055 Saint-Laurent Boulevard, Montreal, Quebec H2Z 1J6 Canada", phone: "1-514-508-9636")
img_chinese_rest8 = URI.open('https://parjosiane.com/wp-content/uploads/2015/12/450-nudo.jpg')
chinese_rest8.photo.attach(io: img_chinese_rest8, filename: 'Nudo', content_type: 'image/jpg')

chinese_rest9 = Restaurant.create!(cuisine: chinese, name: "Fung Shing", address: "1102 St Laurent, Montreal, Quebec Canada", phone: "1-514-866-0469")
img_chinese_rest9 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/14/99/5d/9f/facadu-du-restaurant.jpg')
chinese_rest9.photo.attach(io: img_chinese_rest9, filename: 'Fung Shing', content_type: 'image/jpg')

chinese_rest10 = Restaurant.create!(cuisine: chinese, name: "Mai Xiang Yuan", address: "1084 Saint Laurent, Montreal, Quebec H2Z 1J5 Canada", phone: "1-514-875-1888")
img_chinese_rest10 = URI.open('https://tastet.ca/wp-content/uploads/2019/01/mai-xiang-yuan-7-1024x684.jpg')
chinese_rest10.photo.attach(io: img_chinese_rest10, filename: 'Mai Xiang Yuan', content_type: 'image/jpg')



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
Favorite.create!(restaurant:port_rest2, user: junior)
Favorite.create!(restaurant:port_rest1, user: junior)
Favorite.create!(restaurant:port_rest3, user: junior)

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