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
Follow.destroy_all
Message.destroy_all


# Indian Cuisine 
puts "Creating Indian cuisine"
indian = Cuisine.create!(name:'Indian')
img_indian_cuisine = URI.open('https://c4.wallpaperflare.com/wallpaper/869/719/717/cuisine-food-india-indian-wallpaper-preview.jpg')
indian.photo.attach(io: img_indian_cuisine, filename: 'indian_cuisine', content_type: 'image/jpg')


puts "Creating Indian restaurants"
indian_rest1 = Restaurant.create!(cuisine: indian, name: "Le 409", address: "409 Rue McGill, Montréal", phone: "1-514-750-0409")
img_indian_rest1 = URI.open('https://www.jeffontheroad.com/wp-content/uploads/2019/01/le-409-restaurant-montreal-menu-jeffontheroad-6.jpg')
indian_rest1.photo.attach(io: img_indian_rest1, filename: 'Le 409', content_type: 'image/jpg')

indian_rest2 = Restaurant.create!(cuisine: indian, name: "Atma", address: "3962 Boul. St-Laurent Corner Duluth Street, Montréal", phone: "1-514-798-8484")
img_indian_rest2 = URI.open('https://ssmscdn.yp.ca/image/resize/25b5a82e-9b7e-4dee-8059-a1a7fd3b21a1/ypui-d-mp-pic-gal-lg/restaurant-atma-11.jpg')
indian_rest2.photo.attach(io: img_indian_rest2, filename: 'Atma', content_type: 'image/jpg')

indian_rest3 = Restaurant.create!(cuisine: indian, name: "Resto Darbar", address: "2027 St-Laurent, Montreal", phone: "1-514-982-3724")
img_indian_rest3 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0a/e2/09/dd/resto-darbar.jpg')
indian_rest3.photo.attach(io: img_indian_rest3, filename: 'Resto Darbar', content_type: 'image/jpg')

indian_rest4 = Restaurant.create!(cuisine: indian, name: "Le Taj", address: "2077 Stanley Street, Montreal", phone: "1-514-845-9015")
img_indian_rest4 = URI.open('https://images.squarespace-cdn.com/content/v1/5c6f00f5c46f6d367d3a67c5/1556721782452-8PAU5PHI8LZUXK7OV6XX/ke17ZwdGBToddI8pDm48kPg3kkMSlDqGprD-21e6kCJZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIpppx-FWaxK7i6rVdWZNGy6SGN0ZVlswpj22aI6j1zesKMshLAGzx4R3EDFOm1kBS/3.jpg')
indian_rest4.photo.attach(io: img_indian_rest4, filename: 'Le Taj', content_type: 'image/jpg')

indian_rest5 = Restaurant.create!(cuisine: indian, name: "Chez Devi", address: "1450 Crescent St. Above St. Catherine, Qc, Montreal", phone: "1-514-286-0303")
img_indian_rest5 = URI.open('https://ssmscdn.yp.ca/image/resize/16d4d9af-2414-45cc-a9b4-5465ec292695/ypui-d-mp-pic-gal-lg/devi-restaurant-16.jpg')
indian_rest5.photo.attach(io: img_indian_rest5, filename: 'Chez Devi', content_type: 'image/jpg')

indian_rest6 = Restaurant.create!(cuisine: indian, name: "Gandhi", address: "230 rue Saint-Paul Ouest Vieux Montreal, Montreal", phone: "1-514-845-5866")
img_indian_rest6 = URI.open('https://portal.restomontreal.ca/gandhi/gallery/images/a-restomtl-photo.jpg')
indian_rest6.photo.attach(io: img_indian_rest6, filename: 'Gandhi', content_type: 'image/jpg')

indian_rest7 = Restaurant.create!(cuisine: indian, name: "Thanjai Restaurant", address: "4759 Van Horne, Montreal", phone: "1-514-419-9696")
img_indian_rest7 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/06/8b/45/98/thanjai-restaurant.jpg')
indian_rest7.photo.attach(io: img_indian_rest7, filename: 'Thanjai Restaurant', content_type: 'image/jpg')

indian_rest8 = Restaurant.create!(cuisine: indian, name: "Restaurant Bombay Choupati", address: "5011 Boulevard Des Sources Pierrefonds, Montreal", phone: "1-514-421-3130")
img_indian_rest8 = URI.open('https://img2.10bestmedia.com/Images/Photos/222978/p-4567ky_59_330x220_201407171049.jpg')
indian_rest8.photo.attach(io: img_indian_rest8, filename: 'Restaurant Bombay Choupati', content_type: 'image/jpg')

indian_rest9 = Restaurant.create!(cuisine: indian, name: "Pushap Sweets", address: "5195 Rue Pare, Montreal", phone: "1-514-737-4527")
img_indian_rest9 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/PZVDdBFH7OucjtjivzLhqA/l.jpg')
indian_rest9.photo.attach(io: img_indian_rest9, filename: 'Pushap Sweets', content_type: 'image/jpg')

indian_rest10 = Restaurant.create!(cuisine: indian, name: "Kuljit India", address: "1904 Boulevard Thimens, Montreal", phone: "1-514-745-6975")
img_indian_rest10 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/tWCjJkr8hDCRVNGPlGCLWw/l.jpg')
indian_rest10.photo.attach(io: img_indian_rest10, filename: 'Kuljit India', content_type: 'image/jpg')


puts "Creating Indian cuisine experts"
debora = User.create!(cuisine_id: indian.id, first_name: "Debora", last_name: "Anjos", email:"debora@wagon.com" , bio:"I am from Brazil, moved to Montreal 7 years ago and love the food scene in this wonderful city! I am particularly fond of Indian food and have tried at least half of all indian restaurants in town. I am excited to share my favorite ones on Yummy Palette!  ", password:"123456")
debora_img = URI.open('https://avatars1.githubusercontent.com/u/67605273?v=4')
debora.photo.attach(io: debora_img, filename: 'debora profile', content_type: 'image/jpg')

nachiket = User.create!(cuisine_id: indian.id, first_name: "Nachiket", last_name: "Pusalkar", email:"nachiket@wagon.com" , bio: "I'm really excited to be a part of Yummy Palette to share my favortie Indian restaurants with you as well as discover all  of your recommendations. I love this app!!!!!", password:"123456")
nachiket_img = URI.open('https://avatars3.githubusercontent.com/u/33430835?v=4')
nachiket.photo.attach(io: nachiket_img, filename: 'nachiket profile', content_type: 'image/jpg')

lea = User. create!(cuisine_id: indian.id, first_name: "Lea", last_name: "Jasmine", email:"lea@wagon.com" , bio:"I am an artist, nature lover, food lover, animal lover... I love life and I love being part of Yummy Palette! Follow me on this app and stay up to date with my favorite restaurants and recommendations.", password:"123456")
lea_img = URI.open('https://avatars3.githubusercontent.com/u/67395105?v=4')
lea.photo.attach(io: lea_img, filename: 'lea profile', content_type: 'image/jpg')





#Japanese Cuisine
puts "Creating Japanese cuisine"
japanese = Cuisine.create!(name:'Japanese')
img_japanese_cuisine = URI.open('https://www.otodoke.fr/wp-content/uploads/2018/05/japan-feat.jpg')
japanese.photo.attach(io: img_japanese_cuisine, filename: 'japanese_cuisine', content_type: 'image/jpg')


puts "Creating Japanese restaurants"
japan_rest1 = Restaurant.create!(cuisine: japanese, name: "Saint Sushi Plateau", address: "424 Duluth Ave E, Montréal", phone: "1-514-507-7537", vegetarian: true)
img_japan_rest1 = URI.open('https://www.montrealfooddivas.com/wp-content/uploads/2015/11/Saint-Sushi-Bar-Montreal-Restaurant-Sushi-Bar-2.jpg')
japan_rest1.photo.attach(io: img_japan_rest1, filename: 'Saint Sushi Plateau', content_type: 'image/jpg')

japan_rest2 = Restaurant.create!(cuisine: japanese, name: "Kyo Bar Japonais", address: "711 Cote de la Place d'Armes, Montréal", phone: "1-514-282-2711", vegetarian: false)
img_japan_rest2 = URI.open('https://kyobar.com/wp-content/uploads/img_1508-2000x1333.jpg')
japan_rest2.photo.attach(io: img_japan_rest2, filename: 'Kyo Bar Japonais', content_type: 'image/jpg')

japan_rest3 = Restaurant.create!(cuisine: japanese, name: "Yakato Yokabai", address: "4185 rue Drolet, Montreal", phone: "1-514-282-9991")
img_japan_rest3 = URI.open('https://i.pinimg.com/originals/82/53/74/82537446696d12fdfdd38931399cc77f.jpg')
japan_rest3.photo.attach(io: img_japan_rest3, filename: 'Yakato Yokabai', content_type: 'image/jpg')

japan_rest4 = Restaurant.create!(cuisine: japanese, name: "Kazu", address: "1862 Saint Catherine w, Montreal", phone: "1-514-677-6338")
img_japan_rest4 = URI.open('https://www.destinationcentreville.com/sites/default/files/kazu1.jpg')
japan_rest4.photo.attach(io: img_japan_rest4, filename: 'Kazu', content_type: 'image/jpg')

japan_rest5 = Restaurant.create!(cuisine: japanese, name: "Jatoba", address: "1184 Phillips Place, Montreal", phone: "1-514-871-1184")
img_japan_rest5 = URI.open('https://tastet.ca/wp-content/uploads/2019/04/jatoba-restaurant-centre-ville-montreal-35-1024x683.jpg')
japan_rest5.photo.attach(io: img_japan_rest5, filename: 'Jatoba', content_type: 'image/jpg')

japan_rest6 = Restaurant.create!(cuisine: japanese, name: "Sushi Momo Vegetalien", address: "3609 rue Saint-Denis, Montréal", phone: "1-514-6776338", vegetarian: true  )
img_japan_rest6 = URI.open('https://portal.restomontreal.ca/sushi-momo/gallery/images/19__419-2020-01-10.jpg')
japan_rest6.photo.attach(io: img_japan_rest6, filename: 'Sushi Momo Vegetalien', content_type: 'image/jpg')

japan_rest7 = Restaurant.create!(cuisine: japanese, name: "Imadake", address: "4006 rue Sainte-Catherine, Westmount", phone: "1-514-677-6338")
img_japan_rest7 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/t_Rw8cjz_EiGBNFhe-hUkA/l.jpg')
japan_rest7.photo.attach(io: img_japan_rest7, filename: 'Imadake', content_type: 'image/jpg')

japan_rest8 = Restaurant.create!(cuisine: japanese, name: "Sho-Dan Restaurant", address: "2020, rue Metcalfe Près du métro Peel, Near Peel Metro, Montreal", phone: "1-514-987-9987")
img_japan_rest8 = URI.open('https://ssmscdn.yp.ca/image/resize/743006b9-4272-4e80-afaf-b5ad52be21a5/ypui-d-mp-pic-gal-lg/restaurant-sho-dan-1.jpg')
japan_rest8.photo.attach(io: img_japan_rest8, filename: 'Sho-Dan Restaurant', content_type: 'image/jpg')

japan_rest9 = Restaurant.create!(cuisine: japanese, name: "Kinka Izakaya Montreal", address: "1624 Rue Sainte-Catherine Ouest, Montreal", phone: "1-514-750-1624")
img_japan_rest9 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/nHFVveLBqeiCGy12R2CnRA/l.jpg')
japan_rest9.photo.attach(io: img_japan_rest9, filename: 'Kinka Izakaya Montreal', content_type: 'image/jpg')

japan_rest10 = Restaurant.create!(cuisine: japanese, name: "Jun L", address: "156 Laurier Ave W, Montreal", phone: "1-514-276-5864")
img_japan_rest10 = URI.open('https://images.lpcdn.ca/435x290/201804/26/1530973-jun-i-ouvert-2005-amenage.jpg')
japan_rest10.photo.attach(io: img_japan_rest10, filename: 'Jun L', content_type: 'image/jpg')


puts "Creating Japanese cuisine experts"
wince = User.create!(cuisine_id: japanese.id, first_name: "Wince", last_name: "Shum", email:"wince@wagon.com" , bio:"I eat to live and I live to eat!!! Yummy Palette is my kind of app! Can't wait to discover all the amazing restaurants on this app. And since I have a weak spot for sushi, I'll make sure you know where the best spots in town are! Cheers", password:"123456")
wince_img = URI.open('https://avatars1.githubusercontent.com/u/61887264?v=4')
wince.photo.attach(io: wince_img, filename: 'wince profile', content_type: 'image/jpg')

timothy = User.create!(cuisine_id: japanese.id, first_name: "Timothy", last_name: "Vieira", email:"timothy@wagon.com" , bio:"I'm a web developer from Montreal. My girlfriedn is Japanese and we eat out and try all japanese restaurants in town. Looking forwards to sharing my favorites on Yummy pLaette! ", password:"123456")
timothy_img = URI.open('https://avatars0.githubusercontent.com/u/47645893?v=4')
timothy.photo.attach(io: timothy_img, filename: 'timothy profile', content_type: 'image/jpg')

kyle = User.create!(cuisine_id: japanese.id, first_name: "Kyle", last_name: "Materson", email:"Kyle@wagon.com" , bio:"I worked for 6 years as a carpenter. After a few attempts at teaching myself to code I decided jump in feet first and enroll in Le Wagon. Coding allows me to build things in a very similar way to carpentry but with so many more possibilities. Oh and I love discovering authentic cuisine in town and sharing my love of Japanese cuisine on Yummy Palette.", password:"123456")
kyle_img = URI.open('https://avatars3.githubusercontent.com/u/61397690?v=4')
kyle.photo.attach(io: kyle_img, filename: 'kyle profile', content_type: 'image/jpg')




#Portuguese Cuisine
puts "Creating Portuguese cuisine"
portuguese = Cuisine.create!(name:'Portuguese')
img_portuguese_cuisine = URI.open('https://media.restomontreal.ca/blog/5_2020-01-31-1344_blog.jpg')
portuguese.photo.attach(io: img_portuguese_cuisine, filename: 'portuguese_cuisine', content_type: 'image/jpg')


puts "Creating Portuguese restaurants"
port_rest1 = Restaurant.create!(cuisine: portuguese, name: "Helena", address: "438 McGill, Montréal", phone: "1-514-677-6338" , vegetarian: true)
img_port_rest1 = URI.open('https://images.lpcdn.ca/924x615/201210/19/601068-vue-interieure-restaurant-helena-situe.jpg')
port_rest1.photo.attach(io: img_port_rest1, filename: 'Helena', content_type: 'image/jpg')

port_rest2 = Restaurant.create!(cuisine: portuguese, name: "Ma Poule Mouillée", address: "969 Rachel Street East, Montréal", phone: "1-514-522-5175", vegetarian: true)
img_port_rest2 = URI.open('https://media.cntraveler.com/photos/5b6dab0d9dc0d5057c463e92/master/pass/Ma-Poule-Mouille%CC%81e_Alison-Slattery__2018_Ma-Poule-Mouillee-0004.jpg')
port_rest2.photo.attach(io: img_port_rest2, filename: 'Ma Poule Mouillé', content_type: 'image/jpg')

port_rest3 = Restaurant.create!(cuisine: portuguese, name: "Porto Mar", address: "201 Place d'Youville, Montreal", phone: "1-514-286-5223", vegetarian: false )
img_port_rest3 = URI.open('https://www.bonjourquebec.com/fiche/images/800x600/2df2c04e-a787-4906-b339-912b51572415/restaurant-porto-mar-salle-a-manger.jpg')
port_rest3.photo.attach(io: img_port_rest3, filename: 'Porto Mar', content_type: 'image/jpg')

port_rest4 = Restaurant.create!(cuisine: portuguese, name: "Romados", address: "115 Rachel E, Montreal", phone: "1-514-859-1803", vegetarian: false )
img_port_rest4 = URI.open('https://foodology.ca/wp-content/uploads/2012/05/rom0inner.jpg')
port_rest4.photo.attach(io: img_port_rest4, filename: 'Romados', content_type: 'image/jpg')

port_rest5 = Restaurant.create!(cuisine: portuguese, name: "Portus 360", address: "777, Boulevard Robert Bourassa, Montreal", phone: "1-514-849-2070", vegetarian: false )
img_port_rest5 = URI.open('https://www.debeur.com/site/uploads/news/id1273/Debeur_Portus360-625.jpg')
port_rest5.photo.attach(io: img_port_rest5, filename: 'Portus 360', content_type: 'image/jpg')

port_rest6 = Restaurant.create!(cuisine: portuguese, name: "coco rico", address: "3907 St Laurent, Montreal", phone: "1-514-849-5554", vegetarian: false)
img_port_rest6 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Coco_Rico_Restaurant_Montr%C3%A9al.jpg/1280px-Coco_Rico_Restaurant_Montr%C3%A9al.jpg')
port_rest6.photo.attach(io: img_port_rest6, filename: 'coco rico', content_type: 'image/jpg')

port_rest7 = Restaurant.create!(cuisine: portuguese, name: "Chez Jose", address: "173 Avenue Duluth E, Montréal", phone: "1-514-663-2381", vegetarian: false)
img_port_rest7 = URI.open('https://i.pinimg.com/564x/9c/d0/87/9cd087017b69af74766b7c42a626e4fb.jpg')
port_rest7.photo.attach(io: img_port_rest7, filename: 'Chez Jose', content_type: 'image/jpg')

port_rest8 = Restaurant.create!(cuisine: portuguese, name: "Boca Iberica", address: "12 rue Rachel O, Montréal", phone: "1-514-507-9996", vegetarian: false)
img_port_rest8 = URI.open('https://www.restomontreal.ca/media/blog/boca_iberica-18.jpg')
port_rest8.photo.attach(io: img_port_rest8, filename: 'Boca Iberica', content_type: 'image/jpg')

port_rest9 = Restaurant.create!(cuisine: portuguese, name: "Ferreira Cafe", address: "1485, Jeanne Mance Quartier des spectacles, Montreal", phone: "1-514-848-0988", vegetarian: true)
img_port_rest9 = URI.open('https://ferreiracafe.com/wp-content/uploads/2015/08/ferreira-1585-1024x683.jpg')
port_rest9.photo.attach(io: img_port_rest9, filename: 'Ferreira Cafe', content_type: 'image/jpg')

port_rest10 = Restaurant.create!(cuisine: portuguese, name: "Taverne F", address: "1108 Boulevard de Maisonneuve O, Montréal", phone: "1-514-289-4558", vegetarian: false)
img_port_rest10 = URI.open('https://ferreiracafe.com/wp-content/uploads/2015/08/ferreira-1585-1024x683.jpg')
port_rest10.photo.attach(io: img_port_rest10, filename: 'Taverne F', content_type: 'image/jpg')


puts "Creating Portuguese cuisine experts"
aline = User.create!(cuisine_id: portuguese.id, first_name: "Aline", last_name: "Gasparindo", email:"aline@wagon.com" , bio:"I am Brazil in 2015 and, here, and I felt in love with the startup world. So I am in the Tech industry loving every moment of it. On my spare time I love to learn about new cuisines and try all the wonderful tastes Montreal has to offer. Thanks to Yummy Palette community I amable to discover the very best restaurantsa from so many cuisines and help the portuguese cuisine community showcase the best restaurants in town.  ", password:"123456")
aline_img = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1543883446/yafaowizaho0lqfdnjlg.jpg')
aline.photo.attach(io: aline_img, filename: 'aline profile', content_type: 'image/jpg')

junior = User.create!(cuisine_id: portuguese.id, first_name: "Junior", last_name: "Rivas", email:"junior@wagon.com" , bio:"I am a real estate broker by day and a foodie by night! I am es[pecially fond of Portuguese cuisine which is why I love being part of the Yummy Palette community to share my favorite  restaurants and learn from other passionate food lovers.", password:"123456")
junior_img = URI.open('https://avatars2.githubusercontent.com/u/67280424?v=4')
junior.photo.attach(io: junior_img, filename: 'junior profile', content_type: 'image/jpg')

thomas = User.create!(cuisine_id: portuguese.id, first_name: "Thomas", last_name: "Viaules", email:"thomas@wagon.com" , bio:"I'm a fullstack developer living in Momntreal. I love to hang with friends and eat at the most delicious restaurtants in town which is why I joined Yummy Palette. ", password:"123456")
thomas_img = URI.open('https://avatars0.githubusercontent.com/u/66626082?v=4')
thomas.photo.attach(io: thomas_img, filename: 'thomas profile', content_type: 'image/jpg')




#Italian Cuisine
puts "Creating Italian cuisine"
italian = Cuisine.create!(name:'Italian')
img_italian_cuisine = URI.open('https://fondue.bg/wp-content/uploads/2019/09/italiancuisine.jpg')
italian.photo.attach(io: img_italian_cuisine, filename: 'italian_cuisine', content_type: 'image/jpg')


puts "Creating Italian restaurants"
italian_rest1 = Restaurant.create!(cuisine: italian, name: "La Campagnola steakhouse italien", address: "Av. Dollard 1708, Montréal", phone: "1-514-363-4066", vegetarian: false)
img_italian_rest1 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0d/00/5d/99/photo4jpg.jpg')
italian_rest1.photo.attach(io: img_italian_rest1, filename: 'La Campagnola steakhouse italien', content_type: 'image/jpg')

italian_rest2 = Restaurant.create!(cuisine: italian, name: "II Focolaio", address: "1223 Rue du Square-Phillips, Montréal", phone: "1-514-879-1045", vegetarian: false)
img_italian_rest2 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/06/ca/37/60/il-focolaio-pizza.jpg')
italian_rest2.photo.attach(io: img_italian_rest2, filename: 'II Focolaio', content_type: 'image/jpg')

italian_rest3 = Restaurant.create!(cuisine: italian, name: "Bis", address: "1229 Rue de la Montagne, Montreal", phone: "1-514-866-3234")
img_italian_rest3 = URI.open('https://ssmscdn.yp.ca/image/resize/a5434cea-99f0-41d5-9dd0-2d1251fa72af/ypui-d-mp-pic-gal-lg/bis-ristorante-1.jpg')
italian_rest3.photo.attach(io: img_italian_rest3, filename: 'Bis', content_type: 'image/jpg')

italian_rest4 = Restaurant.create!(cuisine: italian, name: "Salumi Vino", address: "358 rue Notre Dame E., Montreal", phone: "1-514-759-0505")
img_italian_rest4 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/s1gPQVWts756tI1a1MnHLg/l.jpg')
italian_rest4.photo.attach(io: img_italian_rest4, filename: 'Salumi Vino', content_type: 'image/jpg')

italian_rest5 = Restaurant.create!(cuisine: italian, name: "Le Serpent", address: "257 Prince, Montreal", phone: "1-514-316-4666")
img_italian_rest5 = URI.open('https://cdn.vox-cdn.com/thumbor/2b4vIZogXpSwgBozCmaG9gkB014=/110x0:1887x1333/1200x800/filters:focal(110x0:1887x1333)/cdn.vox-cdn.com/uploads/chorus_image/image/44419426/serpentnewcomer.0.0.jpg')
italian_rest5.photo.attach(io: img_italian_rest5, filename: 'Le Serpent', content_type: 'image/jpg')

italian_rest6 = Restaurant.create!(cuisine: italian, name: "Il Campari Centro Restaurant", address: "1177 rue de la Montagne, Montreal", phone: "1-514-868-1177")
img_italian_rest6 = URI.open('https://www.bonjourquebec.com/fiche/images/800x600/bc438c4d-5885-4e34-882f-ed487127da1b/il-campari-centro-interieur.jpg')
italian_rest6.photo.attach(io: img_italian_rest6, filename: 'Il Campari Centro Restaurant', content_type: 'image/jpg')

italian_rest7 = Restaurant.create!(cuisine: italian, name: "Restaurant Epik", address: "171 Rue Saint-Paul Ouest Hotel Épik Montreal, Montreal", phone: "1-514-842-2912")
img_italian_rest7 = URI.open('https://s3-media0.fl.yelpcdn.com/bphoto/431lD4ySuj9QjdIMLGHjug/l.jpg')
italian_rest7.photo.attach(io: img_italian_rest7, filename: 'Restaurant Epik', content_type: 'image/jpg')

italian_rest8 = Restaurant.create!(cuisine: italian, name: "Ristorante Quattro", address: "17 Notre-Dame Street West, Montreal", phone: "1-514-903-2909")
img_italian_rest8 = URI.open('https://quattrossm.com/wp-content/uploads/2016/03/Quattro_chphse_2.jpg')
italian_rest8.photo.attach(io: img_italian_rest8, filename: 'Ristorante Quattro', content_type: 'image/jpg')

italian_rest9 = Restaurant.create!(cuisine: italian, name: "Da Vinci Restaurant", address: "1180 Rue Bishop, Montreal", phone: "1-514-874-2001")
img_italian_rest9 = URI.open('https://davinci.ca/wp-content/uploads/2018/07/our-story2-2018-s.jpg')
italian_rest9.photo.attach(io: img_italian_rest9, filename: 'Da Vinci Restaurant', content_type: 'image/jpg')

italian_rest10 = Restaurant.create!(cuisine: italian, name: "Le Saint-Jacques", address: "6001 de Jumonville , Montreal", phone: "1-514-259-3238")
img_italian_rest10 = URI.open('https://portal.restomontreal.ca/st-jacques/gallery/images/b-restomtl-photo.jpg')
italian_rest10.photo.attach(io: img_italian_rest10, filename: 'Le Saint-Jacques', content_type: 'image/jpg')


puts "Creating Italian cuisine experts"
ekaterina = User.create!(cuisine_id: italian.id, first_name: "Ekaterina", last_name: "Andruishova", email:"ekaterina@wagon.com" , bio:"I'm a photographer and front-end developer living in the beautiful city of Montreal. I've always had a weakness for Italian food so I traveled many times to Italy and am now always searching for the most authentic Italian food in town. Yummy Palette is the best place to meet other Italian food lovers and I discovered the best restaurants in town thanks to them. ", password:"123456")
ekaterina_img = URI.open('https://avatars2.githubusercontent.com/u/67912394?v=4')
ekaterina.photo.attach(io: ekaterina_img, filename: 'ekaterina profile', content_type: 'image/jpg')

emily = User.create!(cuisine_id: italian.id, first_name: "Emily", last_name: "Rockarts", email:"emily@wagon.com" , bio:"I'm a musician and singer-songwriter based in Montreal. My grandma is Italian so I grew up with the best italian home meals. Now I am always in search of the best, most authentic Italian foods in town which remind me of my nonna's cuisine. I found a handful of amazing restaurants that I am excited to share with the Yummy Palette community!", password:"123456")
emily_img = URI.open('https://avatars1.githubusercontent.com/u/66974595?v=4')
emily.photo.attach(io: emily_img, filename: 'emily profile', content_type: 'image/jpg')

nirali = User.create!(cuisine_id: italian.id, first_name: "Nirali", last_name: "Patel", email:"nirali@wagon.com" , bio:"MyNameIsNirali and I am from southern USA. But after completing an amazing bootcamp at Le Wagon Montreal, I got an amazing position working as a fullstack developer in a great company in Montreal. I've absolutely loved discovering the Canadian hospitality, comparable to southern hospitaly :). Yummy Palette has been great in helping me find the most amazing, authentic restaurants in town. I am really glad to be part of this beautiful foody community!!", password:"123456")
nirali_img = URI.open('https://avatars0.githubusercontent.com/u/66753224?v=4')
nirali.photo.attach(io: nirali_img, filename: 'nirali profile', content_type: 'image/jpg')





#Chinese Cuisine
puts "Creating Chinese cuisine"
chinese = Cuisine.create!(name:'Chinese')
img_chinese_cuisine = URI.open('https://as1.ftcdn.net/jpg/01/15/26/28/500_F_115262838_Qdfwviyw9ATjw0TNnky95RjvKoQXprj5.jpg')
chinese.photo.attach(io: img_chinese_cuisine, filename: 'chinese_cuisine', content_type: 'image/jpg')


puts "Creating Chinese restaurants"
chinese_rest1 = Restaurant.create!(cuisine: chinese, name: "Nouille de Lan Zhou", address: "1006 Boulevard Saint-Laurent, Montreal", phone: "1-514-800-2959")
img_chinese_rest1 = URI.open('https://tastet.ca/wp-content/uploads/2019/09/lan-zhou-8-1024x684.jpg')
chinese_rest1.photo.attach(io: img_chinese_rest1, filename: 'Nouille de Lan Zhou', content_type: 'image/jpg')

chinese_rest2 = Restaurant.create!(cuisine: chinese, name: "Beijing", address: "92 de la Gauchetière West, Montreal", phone: "1-514-861-2003")
img_chinese_rest2 = URI.open('https://live.staticflickr.com/1340/927894247_89278e75c1_b.jpg')
chinese_rest2.photo.attach(io: img_chinese_rest2, filename: 'Beijing', content_type: 'image/jpg')

chinese_rest3 = Restaurant.create!(cuisine: chinese, name: "Noodle Factory", address: "1018, rue St-urbain, Montreal", phone: "1-514-677-6338")
img_chinese_rest3 = URI.open('https://images.lpcdn.ca/924x615/200809/21/9227-comptoir-protege-vitre-cuisinier-prepare.jpg')
chinese_rest3.photo.attach(io: img_chinese_rest3, filename: 'Noodle Factory', content_type: 'image/jpg')

chinese_rest4 = Restaurant.create!(cuisine: chinese, name: "Restaurant Szechuan", address: "400 rue Notre-Dame O, Montreal", phone: "1-514-866-8000")
img_chinese_rest4 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/14/bd/ef/45/restaurant-szechuan.jpg')
chinese_rest4.photo.attach(io: img_chinese_rest4, filename: 'Restaurant Szechuan', content_type: 'image/jpg')

chinese_rest5 = Restaurant.create!(cuisine: chinese, name: "Kim Fung", address: "1111 Rue Saint-Urbain, Montreal", phone: "1-514-878-2888")
img_chinese_rest5 = URI.open('https://mobile-img.lpcdn.ca/lpca/924x/eecd3960-d63d-11e9-a65c-0eda3a42da3c.jpg')
chinese_rest5.photo.attach(io: img_chinese_rest5, filename: 'Kim Fung', content_type: 'image/jpg')

chinese_rest6 = Restaurant.create!(cuisine: chinese, name: "Chez Maxime Oriental", address: "1059 St-Laurent, Montreal ", phone: "1-514-861-2888")
img_chinese_rest6 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0d/4d/9e/8d/beautiful-interior.jpg')
chinese_rest6.photo.attach(io: img_chinese_rest6, filename: 'Chez Maxime Oriental', content_type: 'image/jpg')

chinese_rest7 = Restaurant.create!(cuisine: chinese, name: "Chez Chili", address: "1050B Rue Clark, Montreal", phone: "1-514-904-1767")
img_chinese_rest7 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/09/af/d4/5f/photo1jpg.jpg')
chinese_rest7.photo.attach(io: img_chinese_rest7, filename: 'Chez Chili', content_type: 'image/jpg')

chinese_rest8 = Restaurant.create!(cuisine: chinese, name: "Nudo", address: "1055 Saint-Laurent Boulevard, Montreal", phone: "1-514-508-9636")
img_chinese_rest8 = URI.open('https://parjosiane.com/wp-content/uploads/2015/12/450-nudo.jpg')
chinese_rest8.photo.attach(io: img_chinese_rest8, filename: 'Nudo', content_type: 'image/jpg')

chinese_rest9 = Restaurant.create!(cuisine: chinese, name: "Fung Shing", address: "1102 St Laurent, Montreal", phone: "1-514-866-0469")
img_chinese_rest9 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/14/99/5d/9f/facadu-du-restaurant.jpg')
chinese_rest9.photo.attach(io: img_chinese_rest9, filename: 'Fung Shing', content_type: 'image/jpg')

chinese_rest10 = Restaurant.create!(cuisine: chinese, name: "Mai Xiang Yuan", address: "1084 Saint Laurent, Montreal", phone: "1-514-875-1888")
img_chinese_rest10 = URI.open('https://tastet.ca/wp-content/uploads/2019/01/mai-xiang-yuan-7-1024x684.jpg')
chinese_rest10.photo.attach(io: img_chinese_rest10, filename: 'Mai Xiang Yuan', content_type: 'image/jpg')


puts "Creating Chinese cuisine experts"
poyan = User.create!(cuisine_id: chinese.id, first_name: "Poyan", last_name: "Ng", email:"poyan@wagon.com" , bio:"With 9 years of violin teaching experience from Hong Kong, here I am in Montreal pursuing my passion as a web developer. I share the passion and love of food with my boyfriend so we spend lots of time trying restaurants in town and we love that we can share our discoveries on Yummy Palette as well as make amazing new discoveries no matter what cuisine we are in the mood for.  ", password:"123456")
poyan_img = URI.open('https://avatars1.githubusercontent.com/u/58827819?v=4')
poyan.photo.attach(io: poyan_img, filename: 'poyan profile', content_type: 'image/jpg')

meagan = User.create!(cuisine_id: chinese.id, first_name: "Meagan", last_name: "Butters", email:"meagan@wagon.com" , bio:"I have a BFA in Computation Arts and worked in digital marketing for about a year before COVID-19 hit. Besides my digital background, I am also a synchronized swimming coach. I love to hang out with friends, so every week we go out and discover different restaurants. Yummy Palette has been amazing at recommending the most incredible restaurants, week after week!!! I'm so glad I found this app where I get to contribute to the chinese cuisine community, my favorite!!!", password:"123456")
meagan_img = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1596770628/yralq9jbswprabehlhv5.jpg')
meagan.photo.attach(io: meagan_img, filename: 'meagan profile', content_type: 'image/jpg')

rebecca = User.create!(cuisine_id: chinese.id, first_name: "Rebecca", last_name: "Morel", email:"rebecca@wagon.com" , bio:"Hi! I am currently a student at McGill University, doing a Software Engineering bachelor. I've always loved chinese cuisine and have traveled to China twice to discover the authentic of this incredibly varied cuisine. Until I go next, I am happily discovering amazing chinese retaurants in Montreal as well as contributing to the communbity on Yummy Palette as I discover the best!", password:"123456")
rebecca_img = URI.open('https://avatars3.githubusercontent.com/u/67113677?v=4')
rebecca.photo.attach(io: rebecca_img, filename: 'rebecca profile', content_type: 'image/jpg')





#Greek Cuisine
puts "Creating Greek cuisine"
greek = Cuisine.create!(name:'Greek')
img_greek_cuisine = URI.open('https://previews.123rf.com/images/anaumenko/anaumenko1905/anaumenko190500085/123097263-selection-of-traditional-greek-food.jpg')
greek.photo.attach(io: img_greek_cuisine, filename: 'greek_cuisine', content_type: 'image/jpg')


puts "Creating Greek restaurants"
greek_rest1 = Restaurant.create!(cuisine: greek, name: "Zante", address: "3449, Rue St-Laurent, Montreal", phone: "1-514-271-9099")
img_greek_rest1 = URI.open('https://portal.restomontreal.ca/zante-downtown/gallery/images/02_zante_132-2017-10-31.jpg')
greek_rest1.photo.attach(io: img_greek_rest1, filename: 'zante', content_type: 'image/jpg')

greek_rest2 = Restaurant.create!(cuisine: greek, name: "Milos", address: "5357 av. du Parc Between rue St-Viateur and av. Fairmont, Montreal", phone: "1-514-272-3522")
img_greek_rest2 = URI.open('https://media-exp1.licdn.com/dms/image/C561BAQEEjeMqxhOSGw/company-background_10000/0?e=2159024400&v=beta&t=BrdJOxSwvmwgjpePXCjMeCyDn6HCRwrLp4Pe2wIAER8')
greek_rest2.photo.attach(io: img_greek_rest2, filename: 'milos', content_type: 'image/jpg')

greek_rest3 = Restaurant.create!(cuisine: greek, name: "Yia Sou Greek Grill", address: "5375 Queen Mary Road, Montreal", phone: "1-514-488-4222")
img_greek_rest3 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0e/34/eb/0e/view-of-the-exterior.jpg')
greek_rest3.photo.attach(io: img_greek_rest3, filename: 'yia_sou', content_type: 'image/jpg')

greek_rest4 = Restaurant.create!(cuisine: greek, name: "Le Jardin De Panos", address: "521 Av Duluth E, Montreal", phone: "1-514-521-4206")
img_greek_rest4 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0e/34/eb/0e/view-of-the-exterior.jpg')
greek_rest4.photo.attach(io: img_greek_rest4, filename: 'jardin_panos', content_type: 'image/jpg')

greek_rest5 = Restaurant.create!(cuisine: greek, name: "Elounda", address: "1818 Boulevard de la Cote-Vertu, Montreal", phone: "1-514-331-4040")
img_greek_rest5 = URI.open('https://assets.restomontreal.ca/sites/_webfiles/r694/bg_image2.jpg?v=2c')
greek_rest5.photo.attach(io: img_greek_rest5, filename: 'elounda', content_type: 'image/jpg')

greek_rest6 = Restaurant.create!(cuisine: greek, name: "Ouzeri", address: "4690 St-Denis, Montreal", phone: "1-514-845-1336")
img_greek_rest6 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/06/b0/82/89/ouzeri.jpg')
greek_rest6.photo.attach(io: img_greek_rest6, filename: 'ouzeri', content_type: 'image/jpg')

greek_rest7 = Restaurant.create!(cuisine: greek, name: "Mythos", address: "5318 Ave Du Parc, Montreal", phone: "1-514-270-0235")
img_greek_rest7 = URI.open('https://ssmscdn.yp.ca/image/resize/e38593cd-acdd-47ee-9f82-380f3a60b426/ypui-d-mp-pic-gal-lg/mythos-ouzeri-estiatorio-11.jpg')
greek_rest7.photo.attach(io: img_greek_rest7, filename: 'mythos', content_type: 'image/jpg')

greek_rest8 = Restaurant.create!(cuisine: greek, name: "Marven's Restaurant", address: "880 Av Ball, Montreal", phone: "1-514-277-3625")
img_greek_rest8 = URI.open('https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/marvens-greek-restaurant-park-ex-paintings-montreal-winterscenes-hockey-art-c-spandau-streetscenes-carole-spandau.jpg')
greek_rest8.photo.attach(io: img_greek_rest8, filename: 'marven', content_type: 'image/jpg')

greek_rest9 = Restaurant.create!(cuisine: greek, name: "La Maison Grecque", address: "450 Avenue Duluth Est, Montreal", phone: "1-514-842-0969")
img_greek_rest9 = URI.open('http://lamaisongrecque.com/wp-content/uploads/photo-gallery/imported_from_media_libray/Meilleur-Nourriture-Grec.jpg?bwg=1570335574')
greek_rest9.photo.attach(io: img_greek_rest9, filename: 'maison_grecque', content_type: 'image/jpg')

greek_rest10 = Restaurant.create!(cuisine: greek, name: "Marathon Souvlaki", address: "5365 des Jockeys, Montreal", phone: "1-514-731-6455")
img_greek_rest10 = URI.open('https://marathonsouvlaki.ca/wp-content/uploads/2019/12/marathon-souvlaki.jpg')
greek_rest10.photo.attach(io: img_greek_rest10, filename: 'marathon', content_type: 'image/jpg')


puts "Creating Greek cuisine experts"
kahina = User.create!(cuisine_id: greek.id, first_name: "kahina", last_name: "Chelli", email:"kahina@wagon.com" , bio:"I am a web developer based in monmtreal. Outside professional life, I like hiking with family and friends, and to discover the authentic tastes of all cuisines. I have a weak spot for Greek cuisine so it is amazing to be part of a community on Yummy Pslette which brings only the best Greek restaurants in town together into one great app!", password:"123456")
kahina_img = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1594662893/wxc2ykklbz0letyf2vji.jpg')
kahina.photo.attach(io: kahina_img, filename: 'kahina profile', content_type: 'image/jpg')

francesca = User.create!(cuisine_id: greek.id, first_name: "Francesca", last_name: "Hall", email:"francesca@wagon.com" , bio:"I'm Francesca, a web developer, deep water diver, foody, dog lover and Montrealer. I love to be on HYummy Palette as I get to share my recommendations for greek restaurants in town, a cuisine I am very familiar with, with a community of passionate food lovers! I also get to discovcer other cuisines whici is great!", password:"123456")
francesca_img = URI.open('https://avatars1.githubusercontent.com/u/62946944?v=4')
francesca.photo.attach(io: francesca_img, filename: 'francesca profile', content_type: 'image/jpg')

erika = User.create!(cuisine_id: greek.id, first_name: "Erika", last_name: "Sinkovics", email:"erika@wagon.com" , bio:"I worked as an accountant for 8 years. I wanted to do something more creative, so I am now a front-end developer working in montreal for a fantastic company. I love to discover new cuisines on the weekends and share my discoveries of delcious greek cuisine in town!!!", password:"123456")
erika_img = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1594261628/vnz8hkueomwgqua4sbwe.jpg')
erika.photo.attach(io: erika_img, filename: 'francesca profile', content_type: 'image/jpg')




#Mexican Cuisine
puts "Creating Mexican cuisine"
mexican = Cuisine.create!(name:'Mexican')
img_mexican_cuisine = URI.open('https://www.adv-bio.com/wp-content/uploads/shutterstock_395007781__1__gbzwut-e1519314492769.jpg')
mexican.photo.attach(io: img_mexican_cuisine, filename: 'mexican_cuisine', content_type: 'image/jpg')


puts "Creating Mexican restaurants"
mexican_rest1 = Restaurant.create!(cuisine: mexican, name: "Escondite", address: "1206, Union, Montreal", phone: "1-514-419-9755")
img_mexican_rest1 = URI.open('https://www.bonjourquebec.com/en/listing/images/800x600/91729664-69fc-41d3-9d5d-3e7c25e068ce/escondite-montreal-rue-st-paul-o-bar.jpg')
mexican_rest1.photo.attach(io: img_mexican_rest1, filename: 'escondite', content_type: 'image/jpg')

mexican_rest2 = Restaurant.create!(cuisine: mexican, name: "Cafe Lola Rosa", address: "545 Milton, Montreal", phone: "1-514-287-9337")
img_mexican_rest2 = URI.open('https://laurenjane.files.wordpress.com/2010/11/lolarosa.jpg')
mexican_rest2.photo.attach(io: img_mexican_rest2, filename: 'cafe_lola', content_type: 'image/jpg')

mexican_rest3 = Restaurant.create!(cuisine: mexican, name: "La Capital Tacos", address: "232, Jean Talon, East, Montreal", phone: "1-514-873-5255")
img_mexican_rest3 = URI.open('https://i.ytimg.com/vi/zvrSdWP3fr0/maxresdefault.jpg')
mexican_rest3.photo.attach(io: img_mexican_rest3, filename: 'capital_tacos', content_type: 'image/jpg')

mexican_rest4 = Restaurant.create!(cuisine: mexican, name: "El Rey del Taco", address: "232, Jean Talon, East, Montreal", phone: "1-514-274-3336")
img_mexican_rest4 = URI.open('https://montrealbestfoodever.files.wordpress.com/2012/06/p10401281.jpg')
mexican_rest4.photo.attach(io: img_mexican_rest4, filename: 'rey_del_taco', content_type: 'image/jpg')

mexican_rest5 = Restaurant.create!(cuisine: mexican, name: "Restaurant El Sabor de Mexico", address: "5013 Rue Wellinton Verdun, Montreal", phone: "1-514-362-8888")
img_mexican_rest5 = URI.open('https://portal.restomontreal.ca/el-sabor-de-mexico/gallery/images/40_el-sabor_409-2018-07-17.jpg')
mexican_rest5.photo.attach(io: img_mexican_rest5, filename: 'el_sabor', content_type: 'image/jpg')

mexican_rest6 = Restaurant.create!(cuisine: mexican, name: "Grumman 78 ", address: "630 de Courcelle, Montreal", phone: "1-514-290-5125")
img_mexican_rest6 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/18/ef/6e/8f/outside-of-restaurant.jpg')
mexican_rest6.photo.attach(io: img_mexican_rest6, filename: 'grumman', content_type: 'image/jpg')

mexican_rest7 = Restaurant.create!(cuisine: mexican, name: "Escondite Drummond", address: "1224, Rue Drummond, Montreal", phone: "1-514-375-5945")
img_mexican_rest7 = URI.open('https://www.bonjourquebec.com/en/listing/images/800x600/e891c961-218e-4b15-aea4-c169eb711346/escondite-montreal-rue-drummond-exterieur.jpg')
mexican_rest7.photo.attach(io: img_mexican_rest7, filename: 'esoncdite_drummond', content_type: 'image/jpg')

mexican_rest8 = Restaurant.create!(cuisine: mexican, name: "La Tamalera", address: "226 Av. Fairmount o, Montreal", phone: "1-438-381-5034")
img_mexican_rest8 = URI.open('https://www.mtlblog.com/uploads/0019e72edcd96857761da9abd33b166ad8574c0f.jpg_facebook.jpg')
mexican_rest8.photo.attach(io: img_mexican_rest8, filename: 'tamalera', content_type: 'image/jpg')

mexican_rest9 = Restaurant.create!(cuisine: mexican, name: "3 amigos", address: "1621 Saint-Denis st, Montreal, Quebec", phone: "1-514-987-6868")
img_mexican_rest9 = URI.open('https://media.musely.com/u/549bc0a7-3e80-4140-82f2-fcbacbe15cc4.jpg')
mexican_rest9.photo.attach(io: img_mexican_rest9, filename: 'amigos', content_type: 'image/jpg')


puts "Creating Mexican cuisine experts"
alexander = User.create!(cuisine_id: mexican.id, first_name: "Alexander", last_name: "Encinas", email:"alexander@wagon.com" , bio:"I'm Alex. I love my job as a fullstack developer, I love my wife and daughter, adn I love mexicn food!!! It is really great to be part of this amazing foody community on Yummy Palette!", password:"123456")
alexander_img = URI.open('https://avatars2.githubusercontent.com/u/48971294?v=4')
alexander.photo.attach(io: alexander_img, filename: 'alexander profile', content_type: 'image/jpg')

millie = User.create!(cuisine_id: mexican.id, first_name: "Millie", last_name: "Senecal", email:"millie@wagon.com" , bio:"As a creative person, I love solving problems. I started my career doing web marketing and project management, and now I work as a fullstack developer in the heart of Montreal. You can find me on evenings and weekends at restaurants, discovering the many authentic flavours this city has to offer, but more often then not I am discovering the best mexican restaurants in town... my weak spot.", password:"123456")
millie_img = URI.open('https://avatars3.githubusercontent.com/u/25030345?v=4')
millie.photo.attach(io: millie_img, filename: 'millie profile', content_type: 'image/jpg')

arthur = User.create!(cuisine_id: mexican.id, first_name: "Arthur", last_name: "Prats", email:"arthur@wagon.com" , bio:"I believe that every problem has a solution. It just requires humility, resilience, and a good team to build it. I joined le Wagon in Montreal so that I can acquire the necessary skill to further my knowledge of building compelling products. I give my brain a break by enjoying amazing mexican food most of the time. I can't get enough of it! Thanks to yummy Palette I have an amazing community to discover and share our best places in town!!", password:"123456")
arthur_img = URI.open('https://avatars0.githubusercontent.com/u/35572239?v=4')
arthur.photo.attach(io: arthur_img, filename: 'arthur profile', content_type: 'image/jpg')





#Korean Cuisine
puts "Creating Korean cuisine"
korean = Cuisine.create!(name: "Korean")
img_korean_cuisine = URI.open('https://asiasociety.org/sites/default/files/styles/1200w/public/2019-02/%EB%B0%98%EC%B0%AC.jpg')
korean.photo.attach(io: img_korean_cuisine, filename: 'korean_cuisine', content_type: 'image/jpg')


puts "Creating Korean restaurants"
korean_rest1 = Restaurant.create!(cuisine: korean, name: "Omma", address: "51 Rue Ontario O, Montreal", phone: "(514) 379-1183")
img_korean_rest1 = URI.open('https://media1.ledevoir.com/images_galerie/nwd_344350_229850/image.jpg')
korean_rest1.photo.attach(io: img_korean_rest1, filename: 'omma', content_type: 'image/jpg')

korean_rest2 = Restaurant.create!(cuisine: korean, name: "Sam Cha", address: "2176 A Saint-Catherine St, Montreal", phone: "(514) 932-7565")
img_korean_rest2 = URI.open('https://images.squarespace-cdn.com/content/v1/5cbe77f87fdcb8a33b617351/1560572848903-G1Z1L765M6F5JNZM5HIQ/ke17ZwdGBToddI8pDm48kK3wSlZs07heI9EV0CdBBQx7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0pTKqSDRwmMK43IUI3HojJXCyjgVWUnrptCwacG-841H9fbR-hyucpqzvrb-KBUQqg/sam%2Bcha%2Batmosphere')
korean_rest2.photo.attach(io: img_korean_rest2, filename: 'sam_cha', content_type: 'image/jpg')

korean_rest3 = Restaurant.create!(cuisine: korean, name: "Daldongnae", address: "1216 Bishop St, Montreal", phone: "(514) 878-1111")
img_korean_rest3 = URI.open('https://images.squarespace-cdn.com/content/v1/5c7dd5c0af4683dd84e8f918/1551750963647-RIOXMWUER7WKK9TMCZIH/ke17ZwdGBToddI8pDm48kFyD7pzB8zoMIVY5aiUuFlp7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0jG2lbcDYBOeMi4OFSYem8DMb5PTLoEDdB05UqhYu-xbnSznFxIRsaAU-3g5IaylIg/_DSC0927.jpg?format=2500w')
korean_rest3.photo.attach(io: img_korean_rest3, filename: 'daldongnae', content_type: 'image/jpg')

korean_rest4 = Restaurant.create!(cuisine: korean, name: "Chez Bong", address: "1021 Rue St-Laurent, Montreal ", phone: "(514) 396-7779")
img_korean_rest4 = URI.open('https://media-cdn.tripadvisor.com/media/photo-p/15/36/c0/a3/photo0jpg.jpg')
korean_rest4.photo.attach(io: img_korean_rest4, filename: 'chez_bong', content_type: 'image/jpg')

korean_rest5 = Restaurant.create!(cuisine: korean, name: "Mon ami Korean BBQ", address: "1488 Saint-Catherine St W, Montreal", phone: "(514) 931-1119")
img_korean_rest5 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/12/79/9f/d9/ready-for-korean-bbq.jpg')
korean_rest5.photo.attach(io: img_korean_rest5, filename: 'mon_ami', content_type: 'image/jpg')

korean_rest6 = Restaurant.create!(cuisine: korean, name: "Ganadara", address: "1862 Maisonneuve Blvd W, Montreal", phone: "(514) 933-2288")
img_korean_rest6 = URI.open('https://www.mcgilldaily.com/wp-content/uploads/2014/01/CULTURE_Ganadara-Cafe_Tamim-Sujat_WEB.jpg')
korean_rest6.photo.attach(io: img_korean_rest6, filename: 'ganadara', content_type: 'image/jpg')

puts "Creating Korean cuisine experts"
miguel = User.create!(cuisine_id: korean.id, first_name: "Juan-Miguel", last_name: "Hernandez", email:"miguel@wagon.com" , bio:"I am a violist, photographer and have a passion for food and am particularly knowledgeable about Korean cuisine. Really loving being a part of Yummy Palette to share with the community and discover through them the best food in town!!!  ", password:"123456")
miguel_img = URI.open('https://avatars3.githubusercontent.com/u/64239865?v=4')
miguel.photo.attach(io: miguel_img, filename: 'miguel profile', content_type: 'image/jpg')

choong = User.create!(cuisine_id: korean.id, first_name: "Choong Hun", last_name: "Lee", email:"choong@wagon.com" , bio:"I am originally from New York but I moved to Montreal to work as a software developer. I noticed that the korean food industry in Montreal wasen't as vibrant as in New York so it was quite difficult for me to find really good korean cuisine in town. Thanks to Yummy Palette I know not just where to find the best korean food in town, but the best of any cuisine I might be in the mood for. This app is fantastic!!!", password:"123456")
choong_img = URI.open('https://avatars0.githubusercontent.com/u/38733598?v=4')
choong.photo.attach(io: choong_img, filename: 'choong profile', content_type: 'image/jpg')

ryan = User.create!(cuisine_id: korean.id, first_name: "Ryan", last_name: "Buckley", email:"ryan@wagon.com" , bio:"Originally from Toronto, I spent the last seven years working freelance in NYC as a consultant in the arts, helping museums and artists organize their digital and physical assets. I am now in Montreal working as a fullstack developer. Having traveled around the world and spent lots of time in Asia, I am particuarly fond of Korean cuisine. I love that I can share my discoveried on Yummy Palette and discover other people's discoveries. The quality of the restaurants on this app is stunning!", password:"123456")
ryan_img = URI.open('https://avatars1.githubusercontent.com/u/48371025?v=4')
ryan.photo.attach(io: ryan_img, filename: 'ryan profile', content_type: 'image/jpg')





#Middle-Eastern Cuisine
puts "Creating Middle-Eastern cuisine"
middle_eastern = Cuisine.create!(name: "Middle Eastern")
img_middle_eastern_cuisine = URI.open('https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=1200&h=628&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F35%2F2019%2F04%2F03222703%2Ffb-middle-eastern-food.jpg')
middle_eastern.photo.attach(io: img_middle_eastern_cuisine, filename: 'middle_eastern_cuisine', content_type: 'image/jpg')


puts "Creating Middle-Eastern restaurants"
middle_eastern_rest1 = Restaurant.create!(cuisine: middle_eastern, name: "Trip de Bouffe", address: "277 Ave Mont-Royal E, Montreal", phone: "(438) 381-4388")
img_middle_eastern_rest1 = URI.open('https://www.mont-royal.net/image/1/987/0/uploads/site/sdamr_277_2-fr-1550502464.jpg')
middle_eastern_rest1.photo.attach(io: img_middle_eastern_rest1, filename: 'trip_de_bouffe', content_type: 'image/jpg')

middle_eastern_rest2 = Restaurant.create!(cuisine: middle_eastern, name: "Shawarmaz", address: "1206 Peel St, Montreal", phone: "(514) 431-9345")
img_middle_eastern_rest2 = URI.open('https://d1ralsognjng37.cloudfront.net/589936c7-639c-4ee9-bf5c-f4b5e298f248.jpeg')
middle_eastern_rest2.photo.attach(io: img_middle_eastern_rest2, filename: 'shawarmaz', content_type: 'image/jpg')

middle_eastern_rest3 = Restaurant.create!(cuisine: middle_eastern, name: "La Khaima", address: "142 Avenue Fairmount O, Montreal", phone: "(514) 948-9993")
img_middle_eastern_rest3 = URI.open('https://s3.amazonaws.com/tuango2/nimblebuy/19-pour-40-de-fine-cuisine-lafrique-louest-au-restaurant-la-598011-regular.jpg')
middle_eastern_rest3.photo.attach(io: img_middle_eastern_rest3, filename: 'khaima', content_type: 'image/jpg')

middle_eastern_rest4 = Restaurant.create!(cuisine: middle_eastern, name: "Daou", address: "519 Rue Faillon E, Montreal", phone: "(514) 276-8310")
img_middle_eastern_rest4 = URI.open('https://montreall.com/wp-content/uploads/2014/01/restaurant-daou-montreal3.jpg')
middle_eastern_rest4.photo.attach(io: img_middle_eastern_rest4, filename: 'daou', content_type: 'image/jpg')

middle_eastern_rest5 = Restaurant.create!(cuisine: middle_eastern, name: "Damas", address: "1201 Ave Van Horne, Outremont", phone: "(514) 439-5435")
img_middle_eastern_rest5 = URI.open('https://cdn.vox-cdn.com/thumbor/d8LS33YK3h5dlU9tdC_KHIgtx9c=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/19604541/64211094_2511375208909067_95785879599054848_o.jpg')
middle_eastern_rest5.photo.attach(io: img_middle_eastern_rest5, filename: 'damas', content_type: 'image/jpg')

middle_eastern_rest6 = Restaurant.create!(cuisine: middle_eastern, name: "Kaza Maza", address: "4629 Park Ave, Montreal", phone: "(514) 844-6292")
img_middle_eastern_rest6 = URI.open('https://www.accesresto.com/r_photos/res_107_2.jpg')
middle_eastern_rest6.photo.attach(io: img_middle_eastern_rest6, filename: 'kaza_maza', content_type: 'image/jpg')

middle_eastern_rest7 = Restaurant.create!(cuisine: middle_eastern, name: "Omnivore", address: "4306 St Laurent Blvd, Montreal", phone: "(514) 303-5757")
img_middle_eastern_rest7 = URI.open('https://ssmscdn.yp.ca/image/resize/ccbccf47-c4f2-4b8b-86d3-66e83cb11e72/ypui-d-mp-pic-gal-lg/omnivore-4.jpg')
middle_eastern_rest7.photo.attach(io: img_middle_eastern_rest7, filename: 'omnivore', content_type: 'image/jpg')

puts "Creating Middle-Eastern cuisine experts"
michel = User.create!(cuisine_id: middle_eastern.id, first_name: "Michel-Alexandre", last_name: "Broekaert", email:"michel-alexandre@wagon.com" , bio:"I'm a professional pianist, turned coder after an amazing bootcamp at Le Wagon Montreal following the Covid pandemic of 2020. I love all foods but I am most at home with middle eastern cuisine. I love being part of Yummy Palette to share my favorite restaurants and discover new ones. ", password:"123456")
michel_img = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1595389025/fcroj9cvxh3f3ishc0z5.jpg')
michel.photo.attach(io: michel_img, filename: 'michel profile', content_type: 'image/jpg')

boran = User.create!(cuisine_id: middle_eastern.id, first_name: "Boran", last_name: "Zaza", email:"boran@wagon.com" , bio:"I am a pianist, marketing manager and fullstack developer. I am originally from Seria so I am very glad to be able to share my opinion on Yummy Palette and discover so many other amazing restaurants!", password:"123456")
boran_img = URI.open('https://avatars3.githubusercontent.com/u/66437669?v=4')
boran.photo.attach(io: boran_img, filename: 'boran profile', content_type: 'image/jpg')

stephane = User.create!(cuisine_id: middle_eastern.id, first_name: "Stephane", last_name: "Lafontaine", email:"stephane@wagon.com" , bio:"I am a Qigong disciple, a sound engineer, a fullstack developer, a teacher, a rock climber, a healer...... name it, I dot it ;). I have a huge weak spot for middle eastern food but I also love food in general. Yummy Palette is an amazing community I am glad to be part of!", password:"123456")
stephane_img = URI.open('https://avatars0.githubusercontent.com/u/37821714?v=4')
stephane.photo.attach(io: stephane_img, filename: 'stephane profile', content_type: 'image/jpg')





#French Cuisine
puts "Creating French cuisine"
french = Cuisine.create!(name: "French")
img_french_cuisine = URI.open('https://www.expatica.com/app/uploads/sites/5/2014/05/French-food2400x1600px-1200x675.jpg')
french.photo.attach(io: img_french_cuisine, filename: 'french_cuisine', content_type: 'image/jpg')


puts "Creating French restaurants"
french_rest1 = Restaurant.create!(cuisine: french, name: "L'express", address: "3927 St Denis St, Montreal", phone: "(514) 845-5333")
img_french_rest1 = URI.open('https://tastet.ca/wp-content/uploads/2018/10/restaurant-lexpress-montreal-1-1024x684.jpg')
french_rest1.photo.attach(io: img_french_rest1, filename: 'express', content_type: 'image/jpg')

french_rest2 = Restaurant.create!(cuisine: french, name: "Le Quartier Général", address: "1251 Rue Gilford, Montreal", phone: "(514) 658-1839")
img_french_rest2 = URI.open('https://cdn.vox-cdn.com/thumbor/ToZ4OHxYbTNleaQyagp8SnfYQtc=/122x0:596x356/1400x788/filters:focal(122x0:596x356):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/46814314/quartiergeneralchef.0.0.jpg')
french_rest2.photo.attach(io: img_french_rest2, filename: 'quartier_general', content_type: 'image/jpg')

french_rest3 = Restaurant.create!(cuisine: french, name: "Le Pégase", address: "1831 Rue Gilford, Montreal", phone: "(514) 522-0487")
img_french_rest3 = URI.open('https://lepegase.ca/rlp-content/uploads/2014/08/pegase-bouchees.jpg')
french_rest3.photo.attach(io: img_french_rest3, filename: 'pegase', content_type: 'image/jpg')

french_rest4 = Restaurant.create!(cuisine: french, name: "P'tit Plateau", address: "330 Marie-Anne St E, Montreal", phone: "(514) 282-6342")
img_french_rest4 = URI.open('https://portal.restomontreal.ca/le-ptit-plateau/gallery/images/01_le-pti_190-2017-04-18.jpg')
french_rest4.photo.attach(io: img_french_rest4, filename: 'plateau', content_type: 'image/jpg')

french_rest5 = Restaurant.create!(cuisine: french, name: "Au Petit Extra", address: "1690 Rue Ontario E, Montreal", phone: "(514) 527-5552")
img_french_rest5 = URI.open('https://scontent.bookenda.com/merchants/au-petit-extra/image/65c876b0-92be-4cac-b23e-2b709f6d39c7.png')
french_rest5.photo.attach(io: img_french_rest5, filename: 'petit_extra', content_type: 'image/jpg')

french_rest6 = Restaurant.create!(cuisine: french, name: "Le Margaux", address: "5058 Park Ave, Montreal", phone: "(514) 448-1598")
img_french_rest6 = URI.open('https://ssmscdn.yp.ca/image/resize/383fa596-8b8e-41ed-a791-7863567970d4/ypui-d-mp-pic-gal-lg/restaurant-le-margaux-1.jpg')
french_rest6.photo.attach(io: img_french_rest6, filename: 'margaux', content_type: 'image/jpg')

french_rest7 = Restaurant.create!(cuisine: french, name: "Chez Lévèque", address: "1030 Avenue Laurier O, Outremont", phone: "(514) 279-7355")
img_french_rest7 = URI.open('https://s3.amazonaws.com/tuango2/nimblebuy/59pourunmenu5servicesspecial40emeanniversairepour2aucelebreresta-768441-regular.jpg')
french_rest7.photo.attach(io: img_french_rest7, filename: 'leveque', content_type: 'image/jpg')

puts "Creating French cuisine experts"
lenoy = User.create!(cuisine_id: french.id, first_name: "Lenoy", last_name: "Christy", email:"lenoy@wagon.com" , bio:"I'm a 2nd Year McGill Software Engineering student. I lived in France for many years porevious to moving to Montreal. It is really nice to be able to fins the most authentic French restaurants on Yummy Palette! Love it!", password:"123456")
lenoy_img = URI.open('https://avatars1.githubusercontent.com/u/54909689?v=4')
lenoy.photo.attach(io: lenoy_img, filename: 'lenoy profile', content_type: 'image/jpg')

cloe = User.create!(cuisine_id: french.id, first_name: "Cloé", last_name: "Furlan", email:"cloe@wagon.com" , bio:"Originally from France, I amd now based in Momntreal. I worked for three years in various companies as a recruiter and am now a fullstack developer, happily! I love using the Yummy Palette app to find the most authentic restaurants in town and to share my favorite choices for the best French restaurants!", password:"123456")
cloe_img = URI.open('https://avatars0.githubusercontent.com/u/59398311?v=4')
cloe.photo.attach(io: cloe_img, filename: 'cloe profile', content_type: 'image/jpg')

mg = User.create!(cuisine_id: french.id, first_name: "Marie-Gabrielle", last_name: "Ayoub", email:"marie-gabrielle@wagon.com" , bio:"After co-founding Le Wagon in Montréal, running 4 batches and building an amazing team, I have taken the time to learn codding myself. Originally from France, I love french food and thanks to Yummy Palette I have the best french cuisine at my fingertips.", password:"123456")
mg_img = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1544640326/siqunmt58cmrxroe3nbc.jpg')
mg.photo.attach(io: mg_img, filename: 'mg profile', content_type: 'image/jpg')








puts "Creating Global Visitors"
martin = User.create!(cuisine_id: french.id, first_name: "Martin", last_name: "Giannakopoulos", email:"martin@wagon.com" , bio:"I am a web develper and teacher for Le Wagon, based in Montreal. I don't eat very much, or particularly well usually. So I made a resolution to discover great food this year. So I was really happy to discover Yummy Palette which has really open up my world to the amazing flavors of so many cuisines all right here in Montreal! ", password:"123456")
martin_img = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1533305351/pwlstconwxh7zetwsz1w.jpg')
martin.photo.attach(io: martin_img, filename: 'martin profile', content_type: 'image/jpg')

nicolas = User.create!(cuisine_id: french.id, first_name: "Nicolas", last_name: "Fraisse", email:"Nicolas@wagon.com" , bio:"I am a drummer, fullstack developer anf fulltime food lover! Yummy Palette is helping me discover the most authentic taste of various cuisines available right here in Montreal! I love this app!", password:"123456")
nicolas_img = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1570482026/xlayp6fkanfrqzwlg1eu.jpg')
nicolas.photo.attach(io: nicolas_img, filename: 'nicolas profile', content_type: 'image/jpg')

richard = User.create!(cuisine_id: french.id, first_name: "Richard", last_name: "Jarram", email:"richard@wagon.com" , bio:"Fullstack developer and teacher for Le Wagon Montreal, I love spending time out woith friends and discovering restaurants. Yummy Palette is my go-to app to find the bext, most authentic choices in town!!!", password:"123456")
richard_img = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1546902451/oyfiqksipakhgmfvbbsd.jpg')
richard.photo.attach(io: richard_img, filename: 'richard profile', content_type: 'image/jpg')





#reviews for restaurants
puts "creating reviews for Indian Restaurants"
Review.create!(restaurant: indian_rest1, user: thomas, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: indian_rest1, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest1, user: ekaterina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest1, user: aline, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: indian_rest1, user: wince, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: indian_rest1, user: lenoy, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: indian_rest1, user: junior, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: indian_rest2, user: miguel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: indian_rest2, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest2, user: martin, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest2, user: mg, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: indian_rest2, user: stephane, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: indian_rest2, user: kahina, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: indian_rest2, user: cloe, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: indian_rest3, user: nachiket, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: indian_rest3, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest3, user: junior, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest3, user: boran, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: indian_rest3, user: choong, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: indian_rest3, user: ryan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: indian_rest3, user: michel, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: indian_rest4, user: millie, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: indian_rest4, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest4, user: richard, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest4, user: nicolas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: indian_rest4, user: francesca, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: indian_rest4, user: arthur, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: indian_rest4, user: alexander, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: indian_rest5, user: debora, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: indian_rest5, user: lea, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest5, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest5, user: nirali, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: indian_rest5, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: indian_rest5, user: meagan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: indian_rest5, user: rebecca, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: indian_rest6, user: erika, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: indian_rest6, user: rebecca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest6, user: meagan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest6, user: stephane, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: indian_rest6, user: junior, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: indian_rest6, user: poyan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: indian_rest6, user: wince, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: indian_rest7, user: michel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: indian_rest7, user: francesca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest7, user: kahina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest7, user: thomas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: indian_rest7, user: nicolas, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: indian_rest7, user: boran, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: indian_rest7, user: nirali, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: indian_rest8, user: junior, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: indian_rest8, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest8, user: mg, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest8, user: martin, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: indian_rest8, user: erika, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: indian_rest8, user: lea, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: indian_rest8, user: debora, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: indian_rest9, user: richard, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: indian_rest9, user: millie, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest9, user: cloe, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest9, user: miguel, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: indian_rest9, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: indian_rest9, user: michel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: indian_rest9, user: choong, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: indian_rest10, user: lenoy, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: indian_rest10, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest10, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: indian_rest10, user: francesca, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: indian_rest10, user: kahina, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: indian_rest10, user: miguel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: indian_rest10, user: meagan, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

puts "creating reviews for Japanese Restaurants"
Review.create!(restaurant: japan_rest1, user: thomas, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: japan_rest1, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest1, user: ekaterina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest1, user: aline, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: japan_rest1, user: wince, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: japan_rest1, user: lenoy, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: japan_rest1, user: junior, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: japan_rest2, user: miguel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: japan_rest2, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest2, user: martin, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest2, user: mg, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: japan_rest2, user: stephane, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: japan_rest2, user: kahina, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: japan_rest2, user: cloe, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: japan_rest3, user: nachiket, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: japan_rest3, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest3, user: junior, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest3, user: boran, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: japan_rest3, user: choong, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: japan_rest3, user: ryan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: japan_rest3, user: michel, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: japan_rest4, user: millie, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: japan_rest4, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest4, user: richard, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest4, user: nicolas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: japan_rest4, user: francesca, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: japan_rest4, user: arthur, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: japan_rest4, user: alexander, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: japan_rest5, user: debora, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: japan_rest5, user: lea, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest5, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest5, user: nirali, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: japan_rest5, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: japan_rest5, user: meagan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: japan_rest5, user: rebecca, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: japan_rest6, user: erika, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: japan_rest6, user: rebecca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest6, user: meagan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest6, user: stephane, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: japan_rest6, user: junior, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: japan_rest6, user: poyan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: japan_rest6, user: wince, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: japan_rest7, user: michel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: japan_rest7, user: francesca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest7, user: kahina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest7, user: thomas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: japan_rest7, user: nicolas, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: japan_rest7, user: boran, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: japan_rest7, user: nirali, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: japan_rest8, user: junior, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: japan_rest8, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest8, user: mg, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest8, user: martin, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: japan_rest8, user: erika, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: japan_rest8, user: lea, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: japan_rest8, user: debora, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: japan_rest9, user: richard, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: japan_rest9, user: millie, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest9, user: cloe, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest9, user: miguel, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: japan_rest9, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: japan_rest9, user: michel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: japan_rest9, user: choong, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: japan_rest10, user: lenoy, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: japan_rest10, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest10, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: japan_rest10, user: francesca, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: japan_rest10, user: kahina, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: japan_rest10, user: miguel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: japan_rest10, user: meagan, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")


puts "Creating reviews for Portuguese Restaurants"
Review.create!(restaurant: port_rest1, user: thomas, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: port_rest1, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest1, user: ekaterina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest1, user: aline, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: port_rest1, user: wince, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: port_rest1, user: lenoy, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: port_rest1, user: junior, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: port_rest2, user: miguel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: port_rest2, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest2, user: martin, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest2, user: mg, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: port_rest2, user: stephane, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: port_rest2, user: kahina, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: port_rest2, user: cloe, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: port_rest3, user: nachiket, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: port_rest3, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest3, user: junior, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest3, user: boran, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: port_rest3, user: choong, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: port_rest3, user: ryan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: port_rest3, user: michel, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: port_rest4, user: millie, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: port_rest4, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest4, user: richard, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest4, user: nicolas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: port_rest4, user: francesca, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: port_rest4, user: arthur, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: port_rest4, user: alexander, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: port_rest5, user: debora, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: port_rest5, user: lea, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest5, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest5, user: nirali, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: port_rest5, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: port_rest5, user: meagan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: port_rest5, user: rebecca, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: port_rest6, user: erika, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: port_rest6, user: rebecca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest6, user: meagan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest6, user: stephane, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: port_rest6, user: junior, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: port_rest6, user: poyan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: port_rest6, user: wince, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: port_rest7, user: michel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: port_rest7, user: francesca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest7, user: kahina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest7, user: thomas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: port_rest7, user: nicolas, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: port_rest7, user: boran, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: port_rest7, user: nirali, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: port_rest8, user: junior, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: port_rest8, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest8, user: mg, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest8, user: martin, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: port_rest8, user: erika, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: port_rest8, user: lea, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: port_rest8, user: debora, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: port_rest9, user: richard, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: port_rest9, user: millie, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest9, user: cloe, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest9, user: miguel, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: port_rest9, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: port_rest9, user: michel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: port_rest9, user: choong, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: port_rest10, user: lenoy, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: port_rest10, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest10, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: port_rest10, user: francesca, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: port_rest10, user: kahina, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: port_rest10, user: miguel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: port_rest10, user: meagan, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

puts "Creating reviews for Italian restaurants"
Review.create!(restaurant: italian_rest1, user: thomas, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: italian_rest1, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest1, user: ekaterina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest1, user: aline, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: italian_rest1, user: wince, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: italian_rest1, user: lenoy, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: italian_rest1, user: junior, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: italian_rest2, user: miguel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: italian_rest2, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest2, user: martin, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest2, user: mg, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: italian_rest2, user: stephane, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: italian_rest2, user: kahina, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: italian_rest2, user: cloe, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: italian_rest3, user: nachiket, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: italian_rest3, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest3, user: junior, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest3, user: boran, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: italian_rest3, user: choong, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: italian_rest3, user: ryan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: italian_rest3, user: michel, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: italian_rest4, user: millie, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: italian_rest4, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest4, user: richard, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest4, user: nicolas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: italian_rest4, user: francesca, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: italian_rest4, user: arthur, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: italian_rest4, user: alexander, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: italian_rest5, user: debora, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: italian_rest5, user: lea, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest5, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest5, user: nirali, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: italian_rest5, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: italian_rest5, user: meagan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: italian_rest5, user: rebecca, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: italian_rest6, user: erika, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: italian_rest6, user: rebecca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest6, user: meagan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest6, user: stephane, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: italian_rest6, user: junior, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: italian_rest6, user: poyan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: italian_rest6, user: wince, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: italian_rest7, user: michel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: italian_rest7, user: francesca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest7, user: kahina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest7, user: thomas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: italian_rest7, user: nicolas, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: italian_rest7, user: boran, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: italian_rest7, user: nirali, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: italian_rest8, user: junior, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: italian_rest8, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest8, user: mg, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest8, user: martin, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: italian_rest8, user: erika, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: italian_rest8, user: lea, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: italian_rest8, user: debora, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: italian_rest9, user: richard, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: italian_rest9, user: millie, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest9, user: cloe, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest9, user: miguel, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: italian_rest9, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: italian_rest9, user: michel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: italian_rest9, user: choong, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: italian_rest10, user: lenoy, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: italian_rest10, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest10, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: italian_rest10, user: francesca, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: italian_rest10, user: kahina, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: italian_rest10, user: miguel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: italian_rest10, user: meagan, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

puts "Creating reviews for Chinese restaurants"
Review.create!(restaurant: chinese_rest1, user: thomas, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: chinese_rest1, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest1, user: ekaterina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest1, user: aline, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: chinese_rest1, user: wince, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: chinese_rest1, user: lenoy, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: chinese_rest1, user: junior, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: chinese_rest2, user: miguel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: chinese_rest2, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest2, user: martin, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest2, user: mg, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: chinese_rest2, user: stephane, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: chinese_rest2, user: kahina, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: chinese_rest2, user: cloe, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: chinese_rest3, user: nachiket, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: chinese_rest3, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest3, user: junior, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest3, user: boran, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: chinese_rest3, user: choong, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: chinese_rest3, user: ryan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: chinese_rest3, user: michel, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: chinese_rest4, user: millie, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: chinese_rest4, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest4, user: richard, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest4, user: nicolas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: chinese_rest4, user: francesca, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: chinese_rest4, user: arthur, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: chinese_rest4, user: alexander, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: chinese_rest5, user: debora, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: chinese_rest5, user: lea, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest5, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest5, user: nirali, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: chinese_rest5, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: chinese_rest5, user: meagan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: chinese_rest5, user: rebecca, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: chinese_rest6, user: erika, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: chinese_rest6, user: rebecca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest6, user: meagan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest6, user: stephane, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: chinese_rest6, user: junior, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: chinese_rest6, user: poyan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: chinese_rest6, user: wince, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: chinese_rest7, user: michel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: chinese_rest7, user: francesca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest7, user: kahina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest7, user: thomas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: chinese_rest7, user: nicolas, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: chinese_rest7, user: boran, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: chinese_rest7, user: nirali, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: chinese_rest8, user: junior, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: chinese_rest8, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest8, user: mg, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest8, user: martin, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: chinese_rest8, user: erika, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: chinese_rest8, user: lea, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: chinese_rest8, user: debora, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: chinese_rest9, user: richard, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: chinese_rest9, user: millie, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest9, user: cloe, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest9, user: miguel, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: chinese_rest9, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: chinese_rest9, user: michel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: chinese_rest9, user: choong, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: chinese_rest10, user: lenoy, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: chinese_rest10, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest10, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: chinese_rest10, user: francesca, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: chinese_rest10, user: kahina, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: chinese_rest10, user: miguel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: chinese_rest10, user: meagan, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")


puts "Creating reviews for Greek restaurants"
Review.create!(restaurant: greek_rest1, user: thomas, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: greek_rest1, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest1, user: ekaterina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest1, user: aline, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: greek_rest1, user: wince, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: greek_rest1, user: lenoy, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: greek_rest1, user: junior, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: greek_rest2, user: miguel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: greek_rest2, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest2, user: martin, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest2, user: mg, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: greek_rest2, user: stephane, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: greek_rest2, user: kahina, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: greek_rest2, user: cloe, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: greek_rest3, user: nachiket, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: greek_rest3, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest3, user: junior, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest3, user: boran, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: greek_rest3, user: choong, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: greek_rest3, user: ryan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: greek_rest3, user: michel, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: greek_rest4, user: millie, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: greek_rest4, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest4, user: richard, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest4, user: nicolas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: greek_rest4, user: francesca, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: greek_rest4, user: arthur, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: greek_rest4, user: alexander, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: greek_rest5, user: debora, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: greek_rest5, user: lea, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest5, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest5, user: nirali, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: greek_rest5, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: greek_rest5, user: meagan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: greek_rest5, user: rebecca, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: greek_rest6, user: erika, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: greek_rest6, user: rebecca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest6, user: meagan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest6, user: stephane, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: greek_rest6, user: junior, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: greek_rest6, user: poyan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: greek_rest6, user: wince, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: greek_rest7, user: michel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: greek_rest7, user: francesca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest7, user: kahina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest7, user: thomas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: greek_rest7, user: nicolas, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: greek_rest7, user: boran, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: greek_rest7, user: nirali, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: greek_rest8, user: junior, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: greek_rest8, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest8, user: mg, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest8, user: martin, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: greek_rest8, user: erika, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: greek_rest8, user: lea, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: greek_rest8, user: debora, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: greek_rest9, user: richard, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: greek_rest9, user: millie, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest9, user: cloe, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest9, user: miguel, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: greek_rest9, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: greek_rest9, user: michel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: greek_rest9, user: choong, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: greek_rest10, user: lenoy, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: greek_rest10, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest10, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: greek_rest10, user: francesca, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: greek_rest10, user: kahina, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: greek_rest10, user: miguel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: greek_rest10, user: meagan, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

puts "Creating reviews for Mexican restaurants"
Review.create!(restaurant: mexican_rest1, user: thomas, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: mexican_rest1, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest1, user: ekaterina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest1, user: aline, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: mexican_rest1, user: wince, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: mexican_rest1, user: lenoy, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: mexican_rest1, user: junior, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: mexican_rest2, user: miguel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: mexican_rest2, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest2, user: martin, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest2, user: mg, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: mexican_rest2, user: stephane, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: mexican_rest2, user: kahina, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: mexican_rest2, user: cloe, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: mexican_rest3, user: nachiket, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: mexican_rest3, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest3, user: junior, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest3, user: boran, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: mexican_rest3, user: choong, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: mexican_rest3, user: ryan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: mexican_rest3, user: michel, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: mexican_rest4, user: millie, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: mexican_rest4, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest4, user: richard, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest4, user: nicolas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: mexican_rest4, user: francesca, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: mexican_rest4, user: arthur, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: mexican_rest4, user: alexander, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: mexican_rest5, user: debora, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: mexican_rest5, user: lea, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest5, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest5, user: nirali, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: mexican_rest5, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: mexican_rest5, user: meagan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: mexican_rest5, user: rebecca, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: mexican_rest6, user: erika, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: mexican_rest6, user: rebecca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest6, user: meagan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest6, user: stephane, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: mexican_rest6, user: junior, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: mexican_rest6, user: poyan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: mexican_rest6, user: wince, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: mexican_rest7, user: michel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: mexican_rest7, user: francesca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest7, user: kahina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest7, user: thomas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: mexican_rest7, user: nicolas, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: mexican_rest7, user: boran, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: mexican_rest7, user: nirali, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: mexican_rest8, user: junior, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: mexican_rest8, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest8, user: mg, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest8, user: martin, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: mexican_rest8, user: erika, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: mexican_rest8, user: lea, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: mexican_rest8, user: debora, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: mexican_rest9, user: richard, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: mexican_rest9, user: millie, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest9, user: cloe, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: mexican_rest9, user: miguel, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: mexican_rest9, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: mexican_rest9, user: michel, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: mexican_rest9, user: choong, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

puts "Creating reviews for Korean restaurants"
Review.create!(restaurant: korean_rest1, user: thomas, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: korean_rest1, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest1, user: ekaterina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest1, user: aline, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: korean_rest1, user: wince, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: korean_rest1, user: lenoy, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: korean_rest1, user: junior, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: korean_rest2, user: miguel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: korean_rest2, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest2, user: martin, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest2, user: mg, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: korean_rest2, user: stephane, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: korean_rest2, user: kahina, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: korean_rest2, user: cloe, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: korean_rest3, user: nachiket, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: korean_rest3, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest3, user: junior, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest3, user: boran, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: korean_rest3, user: choong, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: korean_rest3, user: ryan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: korean_rest3, user: michel, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: korean_rest4, user: millie, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: korean_rest4, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest4, user: richard, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest4, user: nicolas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: korean_rest4, user: francesca, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: korean_rest4, user: arthur, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: korean_rest4, user: alexander, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: korean_rest5, user: debora, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: korean_rest5, user: lea, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest5, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest5, user: nirali, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: korean_rest5, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: korean_rest5, user: meagan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: korean_rest5, user: rebecca, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: korean_rest6, user: erika, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: korean_rest6, user: rebecca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest6, user: meagan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: korean_rest6, user: stephane, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: korean_rest6, user: junior, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: korean_rest6, user: poyan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: korean_rest6, user: wince, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

puts "Creating reviews for Middle-Eastern restaurants"
Review.create!(restaurant: middle_eastern_rest1, user: thomas, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: middle_eastern_rest1, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest1, user: ekaterina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest1, user: aline, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: middle_eastern_rest1, user: wince, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: middle_eastern_rest1, user: lenoy, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: middle_eastern_rest1, user: junior, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: middle_eastern_rest2, user: miguel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: middle_eastern_rest2, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest2, user: martin, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest2, user: mg, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: middle_eastern_rest2, user: stephane, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: middle_eastern_rest2, user: kahina, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: middle_eastern_rest2, user: cloe, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: middle_eastern_rest3, user: nachiket, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: middle_eastern_rest3, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest3, user: junior, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest3, user: boran, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: middle_eastern_rest3, user: choong, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: middle_eastern_rest3, user: ryan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: middle_eastern_rest3, user: michel, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: middle_eastern_rest4, user: millie, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: middle_eastern_rest4, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest4, user: richard, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest4, user: nicolas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: middle_eastern_rest4, user: francesca, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: middle_eastern_rest4, user: arthur, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: middle_eastern_rest4, user: alexander, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: middle_eastern_rest5, user: debora, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: middle_eastern_rest5, user: lea, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest5, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest5, user: nirali, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: middle_eastern_rest5, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: middle_eastern_rest5, user: meagan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: middle_eastern_rest5, user: rebecca, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: middle_eastern_rest6, user: erika, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: middle_eastern_rest6, user: rebecca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest6, user: meagan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest6, user: stephane, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: middle_eastern_rest6, user: junior, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: middle_eastern_rest6, user: poyan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: middle_eastern_rest6, user: wince, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: middle_eastern_rest7, user: michel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: middle_eastern_rest7, user: francesca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest7, user: kahina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: middle_eastern_rest7, user: thomas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: middle_eastern_rest7, user: nicolas, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: middle_eastern_rest7, user: boran, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: middle_eastern_rest7, user: nirali, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

puts "Creating reviews for French restaurants"
Review.create!(restaurant: french_rest1, user: thomas, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: french_rest1, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest1, user: ekaterina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest1, user: aline, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: french_rest1, user: wince, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: french_rest1, user: lenoy, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: french_rest1, user: junior, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: french_rest2, user: miguel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: french_rest2, user: poyan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest2, user: martin, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest2, user: mg, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: french_rest2, user: stephane, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: french_rest2, user: kahina, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: french_rest2, user: cloe, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: french_rest3, user: nachiket, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: french_rest3, user: kyle, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest3, user: junior, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest3, user: boran, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: french_rest3, user: choong, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: french_rest3, user: ryan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: french_rest3, user: michel, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: french_rest4, user: millie, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: french_rest4, user: miguel, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest4, user: richard, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest4, user: nicolas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: french_rest4, user: francesca, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: french_rest4, user: arthur, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: french_rest4, user: alexander, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: french_rest5, user: debora, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: french_rest5, user: lea, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest5, user: timothy, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest5, user: nirali, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: french_rest5, user: emily, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: french_rest5, user: meagan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: french_rest5, user: rebecca, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: french_rest6, user: erika, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: french_rest6, user: rebecca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest6, user: meagan, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest6, user: stephane, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: french_rest6, user: junior, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: french_rest6, user: poyan, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: french_rest6, user: wince, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")

Review.create!(restaurant: french_rest7, user: michel, content:"Authentic recipes, done to prefection! I recommend this place hands down!")
Review.create!(restaurant: french_rest7, user: francesca, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest7, user: kahina, content:"I enjoyed this restaurant so much! And the deserts here are just phenomenal!!!!")
Review.create!(restaurant: french_rest7, user: thomas, content:"Food coma!!!! What a spectaculor restaurant!")
Review.create!(restaurant: french_rest7, user: nicolas, content:"Please take the time to try out this restaurant if you haven't yet. The food, the service, the vibe!!! We are going back next week!!")
Review.create!(restaurant: french_rest7, user: boran, content:"Just Spectacular!!! Haven't had this good a meal in a while!")
Review.create!(restaurant: french_rest7, user: nirali, content:"Thank you Yummy Palette community for these incredible recommendations. This last meal was, yet again, just stellar!!")





#dishes for restaurants
puts "creating Indian dishes"
i1 = Dish.create!(name:"tandoori")
i2 = Dish.create!(name:"tikka masala")
i3 = Dish.create!(name:"vindaloo curry")
i4 = Dish.create!(name:"rogan josh")
i5 = Dish.create!(name:"malai kofta")
i6 = Dish.create!(name:"chole")
i7 = Dish.create!(name:"palak paneer")
i8 = Dish.create!(name:"kaali daal")
i9 = Dish.create!(name:"naan")

puts "creating Japanese dishes"
j1 = Dish.create!(name:"sushi")
j2 = Dish.create!(name:"sashimi")
j3 = Dish.create!(name:"tempura")
j4 = Dish.create!(name:"soba")
j5 = Dish.create!(name:"udon")
j6 = Dish.create!(name:"onigiri")
j7 = Dish.create!(name:"yakitori")
j8 = Dish.create!(name:"sukiyaki")
j9 = Dish.create!(name:"oden")
j10 = Dish.create!(name:"miso")

puts "creating Portuguese dishes"
p1 = Dish.create!(name:"caldo verde")
p2 = Dish.create!(name:"bacalhau")
p3 = Dish.create!(name:"sardines")
p4 = Dish.create!(name:"bifanas")
p5 = Dish.create!(name:"francesinha")
p6 = Dish.create!(name:"chicken piri-piri")
p7 = Dish.create!(name:"polvo a la Lagareiro")
p8 = Dish.create!(name:"porco preto")
p9 = Dish.create!(name:"pastel de nata")

puts "creating Italian dishes"
it1 = Dish.create!(name:"panzanella")
it2 = Dish.create!(name:"bruschetta")
it3 = Dish.create!(name:"focaccia")
it4 = Dish.create!(name:"Pasta Carbonara")
it5 = Dish.create!(name:"Pizza Margherita")
it6 = Dish.create!(name:"risotto")
it7 = Dish.create!(name:"lasacha")
it8 = Dish.create!(name:"panna cotta")
it9 = Dish.create!(name:"panettone")

puts "creating Chinese dishes"
c1 = Dish.create!(name:"xiaolongbao")
c2 = Dish.create!(name:"peking duck")
c3 = Dish.create!(name:"stinky tofu")
c4 = Dish.create!(name:"chow mein")
c5 = Dish.create!(name:"congee")
c6 = Dish.create!(name:"baozi")
c7 = Dish.create!(name:"char siu")
c8 = Dish.create!(name:"zhajiangmian")
c9 = Dish.create!(name:"wonton soup")

puts "creating Greek dishes"
g1 = Dish.create!(name:"taramasalata")
g2 = Dish.create!(name:"dolmades")
g3 = Dish.create!(name:"moussaka")
g4 = Dish.create!(name:"bougatsa")
g5 = Dish.create!(name:"courgette balls")
g6 = Dish.create!(name:"baklava")
g7 = Dish.create!(name:"amygdalota")
g8 = Dish.create!(name:"dolmadakia")
g9 = Dish.create!(name:"tomatokeftedes")
g10 = Dish.create!(name:"ellinikos")

puts "creating Mexican dishes"
m1 = Dish.create!(name:"enchiladas")
m2 = Dish.create!(name:"posole")
m3 = Dish.create!(name:"tortas")
m4 = Dish.create!(name:"tacos")
m5 = Dish.create!(name:"burrito")
m6 = Dish.create!(name:"sopa de lima")
m7 = Dish.create!(name:"chilaquiles")
m8 = Dish.create!(name:"tostadas")
m9 = Dish.create!(name:"chiles en nogada")
m10 = Dish.create!(name:"mole")

puts "creating Korean dishes"
k1 = Dish.create!(name:"hoeddeok")
k2 = Dish.create!(name:"bulgogi")
k3 = Dish.create!(name:"galbi")
k4 = Dish.create!(name:"japchae")
k5 = Dish.create!(name:"kimchi")
k6 = Dish.create!(name:"bibimbap")
k7 = Dish.create!(name:"sundubu")
k8 = Dish.create!(name:"bossam")
k9 = Dish.create!(name:"samgyeopsal")
k10 = Dish.create!(name:"seolleontang")

puts "creating Middle-Eastern dishes"
me1 = Dish.create!(name:"hummus")
me2 = Dish.create!(name:"manakeesh")
me3 = Dish.create!(name:"grilled halloumi")
me4 = Dish.create!(name:"falafel")
me5 = Dish.create!(name:"tabouleh balls")
me6 = Dish.create!(name:"baklava")
me7 = Dish.create!(name:"moutabal")
me8 = Dish.create!(name:"fattoush")
me9 = Dish.create!(name:"shanklish")
me10 = Dish.create!(name:"shawarma")

puts "creating French dishes"
f1 = Dish.create!(name:"onion soup")
f2 = Dish.create!(name:"coq au vin")
f3 = Dish.create!(name:"cassoulet")
f4 = Dish.create!(name:"boeuf bourgignon")
f5 = Dish.create!(name:"chocolat souffle")
f6 = Dish.create!(name:"flamiche")
f7 = Dish.create!(name:"duck confit")
f8 = Dish.create!(name:"nicoise salad")
f9 = Dish.create!(name:"ratatouille")
f10 = Dish.create!(name:"tarte tatin")




#Tags for dishes
puts "creating tags for Indian restaurants"
Tag.create!(dish: i1, restaurant: indian_rest1, user: debora)
Tag.create!(dish: i2, restaurant: indian_rest1, user: debora)
Tag.create!(dish: i3, restaurant: indian_rest1, user: nachiket)
Tag.create!(dish: i4, restaurant: indian_rest1, user: nachiket)
Tag.create!(dish: i5, restaurant: indian_rest2, user: debora)
Tag.create!(dish: i4, restaurant: indian_rest2, user: lea)
Tag.create!(dish: i6, restaurant: indian_rest2, user: lea)
Tag.create!(dish: i6, restaurant: indian_rest3, user: nachiket)
Tag.create!(dish: i7, restaurant: indian_rest3, user: nachiket)
Tag.create!(dish: i3, restaurant: indian_rest4, user: debora)
Tag.create!(dish: i2, restaurant: indian_rest4, user: debora)
Tag.create!(dish: i8, restaurant: indian_rest4, user: nachiket)
Tag.create!(dish: i9, restaurant: indian_rest4, user: nachiket)
Tag.create!(dish: i1, restaurant: indian_rest4, user: debora)
Tag.create!(dish: i9, restaurant: indian_rest5, user: debora)
Tag.create!(dish: i8, restaurant: indian_rest5, user: debora)
Tag.create!(dish: i4, restaurant: indian_rest6, user: debora)
Tag.create!(dish: i1, restaurant: indian_rest7, user: lea)
Tag.create!(dish: i5, restaurant: indian_rest7, user: lea)
Tag.create!(dish: i7, restaurant: indian_rest7, user: nachiket)
Tag.create!(dish: i5, restaurant: indian_rest8, user: nachiket)
Tag.create!(dish: i8, restaurant: indian_rest8, user: lea)
Tag.create!(dish: i9, restaurant: indian_rest8, user: debora)
Tag.create!(dish: i2, restaurant: indian_rest9, user: lea)
Tag.create!(dish: i3, restaurant: indian_rest9, user: lea)
Tag.create!(dish: i4, restaurant: indian_rest10, user: nachiket)
Tag.create!(dish: i6, restaurant: indian_rest10, user: nachiket)
Tag.create!(dish: i3, restaurant: indian_rest10, user: nachiket)

puts "creating tags for Japanese restaurants"
Tag.create!(dish: j1, restaurant: japan_rest1, user: wince)
Tag.create!(dish: j2, restaurant: japan_rest1, user: wince)
Tag.create!(dish: j3, restaurant: japan_rest1, user: timothy)
Tag.create!(dish: j4, restaurant: japan_rest1, user: timothy)
Tag.create!(dish: j5, restaurant: japan_rest2, user: wince)
Tag.create!(dish: j4, restaurant: japan_rest2, user: kyle)
Tag.create!(dish: j6, restaurant: japan_rest2, user: kyle)
Tag.create!(dish: j6, restaurant: japan_rest3, user: timothy)
Tag.create!(dish: j7, restaurant: japan_rest3, user: timothy)
Tag.create!(dish: j3, restaurant: japan_rest4, user: wince)
Tag.create!(dish: j2, restaurant: japan_rest4, user: wince)
Tag.create!(dish: j8, restaurant: japan_rest4, user: timothy)
Tag.create!(dish: j9, restaurant: japan_rest4, user: timothy)
Tag.create!(dish: j1, restaurant: japan_rest4, user: wince)
Tag.create!(dish: j10, restaurant: japan_rest5, user: wince)
Tag.create!(dish: j8, restaurant: japan_rest5, user: wince)
Tag.create!(dish: j10, restaurant: japan_rest6, user: wince)
Tag.create!(dish: j1, restaurant: japan_rest7, user: kyle)
Tag.create!(dish: j5, restaurant: japan_rest7, user: kyle)
Tag.create!(dish: j7, restaurant: japan_rest7, user: timothy)
Tag.create!(dish: j5, restaurant: japan_rest8, user: timothy)
Tag.create!(dish: j8, restaurant: japan_rest8, user: kyle)
Tag.create!(dish: j9, restaurant: japan_rest8, user: wince)
Tag.create!(dish: j2, restaurant: japan_rest9, user: kyle)
Tag.create!(dish: j3, restaurant: japan_rest9, user: kyle)
Tag.create!(dish: j4, restaurant: japan_rest10, user: timothy)
Tag.create!(dish: j6, restaurant: japan_rest10, user: timothy)
Tag.create!(dish: j3, restaurant: japan_rest10, user: timothy)

puts "creating tags for Portuguese restaurants"
Tag.create!(dish: p1, restaurant: port_rest1, user: aline)
Tag.create!(dish: p2, restaurant: port_rest1, user: aline)
Tag.create!(dish: p3, restaurant: port_rest1, user: thomas)
Tag.create!(dish: p4, restaurant: port_rest1, user: thomas)
Tag.create!(dish: p5, restaurant: port_rest2, user: aline)
Tag.create!(dish: p4, restaurant: port_rest2, user: junior)
Tag.create!(dish: p6, restaurant: port_rest2, user: junior)
Tag.create!(dish: p6, restaurant: port_rest3, user: thomas)
Tag.create!(dish: p7, restaurant: port_rest3, user: thomas)
Tag.create!(dish: p3, restaurant: port_rest4, user: aline)
Tag.create!(dish: p2, restaurant: port_rest4, user: aline)
Tag.create!(dish: p8, restaurant: port_rest4, user: thomas)
Tag.create!(dish: p9, restaurant: port_rest4, user: thomas)
Tag.create!(dish: p1, restaurant: port_rest4, user: aline)
Tag.create!(dish: p9, restaurant: port_rest5, user: aline)
Tag.create!(dish: p8, restaurant: port_rest5, user: aline)
Tag.create!(dish: p4, restaurant: port_rest6, user: aline)
Tag.create!(dish: p1, restaurant: port_rest7, user: junior)
Tag.create!(dish: p5, restaurant: port_rest7, user: junior)
Tag.create!(dish: p7, restaurant: port_rest7, user: thomas)
Tag.create!(dish: p5, restaurant: port_rest8, user: thomas)
Tag.create!(dish: p8, restaurant: port_rest8, user: junior)
Tag.create!(dish: p9, restaurant: port_rest8, user: aline)
Tag.create!(dish: p2, restaurant: port_rest9, user: junior)
Tag.create!(dish: p3, restaurant: port_rest9, user: junior)
Tag.create!(dish: p4, restaurant: port_rest10, user: thomas)
Tag.create!(dish: p6, restaurant: port_rest10, user: thomas)
Tag.create!(dish: p3, restaurant: port_rest10, user: thomas)

puts "creating tags for Indian restaurants"
Tag.create!(dish: it1, restaurant: italian_rest1, user: nirali)
Tag.create!(dish: it2, restaurant: italian_rest1, user: nirali)
Tag.create!(dish: it3, restaurant: italian_rest1, user: emily)
Tag.create!(dish: it4, restaurant: italian_rest1, user: emily)
Tag.create!(dish: it5, restaurant: italian_rest2, user: nirali)
Tag.create!(dish: it4, restaurant: italian_rest2, user: ekaterina)
Tag.create!(dish: it6, restaurant: italian_rest2, user: ekaterina)
Tag.create!(dish: it6, restaurant: italian_rest3, user: emily)
Tag.create!(dish: it7, restaurant: italian_rest3, user: emily)
Tag.create!(dish: it3, restaurant: italian_rest4, user: nirali)
Tag.create!(dish: it2, restaurant: italian_rest4, user: nirali)
Tag.create!(dish: it8, restaurant: italian_rest4, user: emily)
Tag.create!(dish: it9, restaurant: italian_rest4, user: emily)
Tag.create!(dish: it1, restaurant: italian_rest4, user: nirali)
Tag.create!(dish: it9, restaurant: italian_rest5, user: nirali)
Tag.create!(dish: it8, restaurant: italian_rest5, user: nirali)
Tag.create!(dish: it4, restaurant: italian_rest6, user: nirali)
Tag.create!(dish: it1, restaurant: italian_rest7, user: ekaterina)
Tag.create!(dish: it5, restaurant: italian_rest7, user: ekaterina)
Tag.create!(dish: it7, restaurant: italian_rest7, user: emily)
Tag.create!(dish: it5, restaurant: italian_rest8, user: emily)
Tag.create!(dish: it8, restaurant: italian_rest8, user: ekaterina)
Tag.create!(dish: it9, restaurant: italian_rest8, user: nirali)
Tag.create!(dish: it2, restaurant: italian_rest9, user: ekaterina)
Tag.create!(dish: it3, restaurant: italian_rest9, user: ekaterina)
Tag.create!(dish: it4, restaurant: italian_rest10, user: emily)
Tag.create!(dish: it6, restaurant: italian_rest10, user: emily)
Tag.create!(dish: it3, restaurant: italian_rest10, user: emily)


puts "creating tags for Chinese restaurants"
Tag.create!(dish: c1, restaurant: chinese_rest1, user: poyan)
Tag.create!(dish: c2, restaurant: chinese_rest1, user: poyan)
Tag.create!(dish: c3, restaurant: chinese_rest1, user: meagan)
Tag.create!(dish: c4, restaurant: chinese_rest1, user: meagan)
Tag.create!(dish: c5, restaurant: chinese_rest2, user: poyan)
Tag.create!(dish: c4, restaurant: chinese_rest2, user: rebecca)
Tag.create!(dish: c6, restaurant: chinese_rest2, user: rebecca)
Tag.create!(dish: c6, restaurant: chinese_rest3, user: meagan)
Tag.create!(dish: c7, restaurant: chinese_rest3, user: meagan)
Tag.create!(dish: c3, restaurant: chinese_rest4, user: poyan)
Tag.create!(dish: c2, restaurant: chinese_rest4, user: poyan)
Tag.create!(dish: c8, restaurant: chinese_rest4, user: meagan)
Tag.create!(dish: c9, restaurant: chinese_rest4, user: meagan)
Tag.create!(dish: c1, restaurant: chinese_rest4, user: poyan)
Tag.create!(dish: c9, restaurant: chinese_rest5, user: poyan)
Tag.create!(dish: c8, restaurant: chinese_rest5, user: poyan)
Tag.create!(dish: c4, restaurant: chinese_rest6, user: poyan)
Tag.create!(dish: c1, restaurant: chinese_rest7, user: rebecca)
Tag.create!(dish: c5, restaurant: chinese_rest7, user: rebecca)
Tag.create!(dish: c7, restaurant: chinese_rest7, user: meagan)
Tag.create!(dish: c5, restaurant: chinese_rest8, user: meagan)
Tag.create!(dish: c8, restaurant: chinese_rest8, user: rebecca)
Tag.create!(dish: c9, restaurant: chinese_rest8, user: poyan)
Tag.create!(dish: c2, restaurant: chinese_rest9, user: rebecca)
Tag.create!(dish: c3, restaurant: chinese_rest9, user: rebecca)
Tag.create!(dish: c4, restaurant: chinese_rest10, user: meagan)
Tag.create!(dish: c6, restaurant: chinese_rest10, user: meagan)
Tag.create!(dish: c3, restaurant: chinese_rest10, user: meagan)

puts "creating tags for Greek restaurants"
Tag.create!(dish: g1, restaurant: greek_rest1, user: kahina)
Tag.create!(dish: g2, restaurant: greek_rest1, user: kahina)
Tag.create!(dish: g3, restaurant: greek_rest1, user: erika)
Tag.create!(dish: g4, restaurant: greek_rest1, user: erika)
Tag.create!(dish: g5, restaurant: greek_rest2, user: kahina)
Tag.create!(dish: g4, restaurant: greek_rest2, user: francesca)
Tag.create!(dish: g6, restaurant: greek_rest2, user: francesca)
Tag.create!(dish: g6, restaurant: greek_rest3, user: erika)
Tag.create!(dish: g7, restaurant: greek_rest3, user: erika)
Tag.create!(dish: g3, restaurant: greek_rest4, user: kahina)
Tag.create!(dish: g2, restaurant: greek_rest4, user: kahina)
Tag.create!(dish: g8, restaurant: greek_rest4, user: erika)
Tag.create!(dish: g9, restaurant: greek_rest4, user: erika)
Tag.create!(dish: g1, restaurant: greek_rest4, user: kahina)
Tag.create!(dish: g10, restaurant: greek_rest5, user: kahina)
Tag.create!(dish: g8, restaurant: greek_rest5, user: kahina)
Tag.create!(dish: g10, restaurant: greek_rest6, user: kahina)
Tag.create!(dish: g1, restaurant: greek_rest7, user: francesca)
Tag.create!(dish: g5, restaurant: greek_rest7, user: francesca)
Tag.create!(dish: g7, restaurant: greek_rest7, user: erika)
Tag.create!(dish: g5, restaurant: greek_rest8, user: erika)
Tag.create!(dish: g8, restaurant: greek_rest8, user: francesca)
Tag.create!(dish: g9, restaurant: greek_rest8, user: kahina)
Tag.create!(dish: g2, restaurant: greek_rest9, user: francesca)
Tag.create!(dish: g3, restaurant: greek_rest9, user: francesca)
Tag.create!(dish: g4, restaurant: greek_rest10, user: erika)
Tag.create!(dish: g6, restaurant: greek_rest10, user: erika)
Tag.create!(dish: g3, restaurant: greek_rest10, user: erika)

puts "creating tags for Mexican restaurants"
Tag.create!(dish: m1, restaurant: mexican_rest1, user: alexander)
Tag.create!(dish: m2, restaurant: mexican_rest1, user: alexander)
Tag.create!(dish: m3, restaurant: mexican_rest1, user: millie)
Tag.create!(dish: m4, restaurant: mexican_rest1, user: millie)
Tag.create!(dish: m5, restaurant: mexican_rest2, user: alexander)
Tag.create!(dish: m4, restaurant: mexican_rest2, user: arthur)
Tag.create!(dish: m6, restaurant: mexican_rest2, user: arthur)
Tag.create!(dish: m6, restaurant: mexican_rest3, user: millie)
Tag.create!(dish: m7, restaurant: mexican_rest3, user: millie)
Tag.create!(dish: m3, restaurant: mexican_rest4, user: alexander)
Tag.create!(dish: m2, restaurant: mexican_rest4, user: alexander)
Tag.create!(dish: m8, restaurant: mexican_rest4, user: millie)
Tag.create!(dish: m9, restaurant: mexican_rest4, user: millie)
Tag.create!(dish: m1, restaurant: mexican_rest4, user: alexander)
Tag.create!(dish: m10, restaurant: mexican_rest5, user: alexander)
Tag.create!(dish: m8, restaurant: mexican_rest5, user: alexander)
Tag.create!(dish: m10, restaurant: mexican_rest6, user: alexander)
Tag.create!(dish: m1, restaurant: mexican_rest7, user: arthur)
Tag.create!(dish: m5, restaurant: mexican_rest7, user: arthur)
Tag.create!(dish: m7, restaurant: mexican_rest7, user: millie)
Tag.create!(dish: m5, restaurant: mexican_rest8, user: millie)
Tag.create!(dish: m8, restaurant: mexican_rest8, user: arthur)
Tag.create!(dish: m9, restaurant: mexican_rest8, user: alexander)
Tag.create!(dish: m2, restaurant: mexican_rest9, user: arthur)
Tag.create!(dish: m3, restaurant: mexican_rest9, user: arthur)


puts "creating tags for Korean restaurants"
Tag.create!(dish: k1, restaurant: korean_rest1, user: choong)
Tag.create!(dish: k2, restaurant: korean_rest1, user: choong)
Tag.create!(dish: k3, restaurant: korean_rest1, user: miguel)
Tag.create!(dish: k4, restaurant: korean_rest1, user: miguel)
Tag.create!(dish: k5, restaurant: korean_rest2, user: choong)
Tag.create!(dish: k4, restaurant: korean_rest2, user: ryan)
Tag.create!(dish: k6, restaurant: korean_rest2, user: ryan)
Tag.create!(dish: k6, restaurant: korean_rest3, user: miguel)
Tag.create!(dish: k7, restaurant: korean_rest3, user: miguel)
Tag.create!(dish: k3, restaurant: korean_rest4, user: choong)
Tag.create!(dish: k2, restaurant: korean_rest4, user: choong)
Tag.create!(dish: k8, restaurant: korean_rest4, user: miguel)
Tag.create!(dish: k9, restaurant: korean_rest4, user: miguel)
Tag.create!(dish: k1, restaurant: korean_rest4, user: choong)
Tag.create!(dish: k10, restaurant: korean_rest5, user: choong)
Tag.create!(dish: k8, restaurant: korean_rest5, user: choong)
Tag.create!(dish: k10, restaurant: korean_rest6, user: choong)


puts "creating tags for Middle-Eastern restaurants"
Tag.create!(dish: me1, restaurant: middle_eastern_rest1, user: michel)
Tag.create!(dish: me2, restaurant: middle_eastern_rest1, user: michel)
Tag.create!(dish: me3, restaurant: middle_eastern_rest1, user: boran)
Tag.create!(dish: me4, restaurant: middle_eastern_rest1, user: boran)
Tag.create!(dish: me5, restaurant: middle_eastern_rest2, user: michel)
Tag.create!(dish: me4, restaurant: middle_eastern_rest2, user: stephane)
Tag.create!(dish: me6, restaurant: middle_eastern_rest2, user: stephane)
Tag.create!(dish: me6, restaurant: middle_eastern_rest3, user: boran)
Tag.create!(dish: me7, restaurant: middle_eastern_rest3, user: boran)
Tag.create!(dish: me3, restaurant: middle_eastern_rest4, user: michel)
Tag.create!(dish: me2, restaurant: middle_eastern_rest4, user: michel)
Tag.create!(dish: me8, restaurant: middle_eastern_rest4, user: boran)
Tag.create!(dish: me9, restaurant: middle_eastern_rest4, user: boran)
Tag.create!(dish: me1, restaurant: middle_eastern_rest4, user: michel)
Tag.create!(dish: me10, restaurant: middle_eastern_rest5, user: michel)
Tag.create!(dish: me8, restaurant: middle_eastern_rest5, user: michel)
Tag.create!(dish: me10, restaurant: middle_eastern_rest6, user: michel)
Tag.create!(dish: me1, restaurant: middle_eastern_rest7, user: stephane)
Tag.create!(dish: me5, restaurant: middle_eastern_rest7, user: stephane)
Tag.create!(dish: me7, restaurant: middle_eastern_rest7, user: boran)


puts "creating tags for French restaurants"
Tag.create!(dish: f1, restaurant: french_rest1, user: lenoy)
Tag.create!(dish: f2, restaurant: french_rest1, user: lenoy)
Tag.create!(dish: f3, restaurant: french_rest1, user: cloe)
Tag.create!(dish: f4, restaurant: french_rest1, user: cloe)
Tag.create!(dish: f5, restaurant: french_rest2, user: lenoy)
Tag.create!(dish: f4, restaurant: french_rest2, user: mg)
Tag.create!(dish: f6, restaurant: french_rest2, user: mg)
Tag.create!(dish: f6, restaurant: french_rest3, user: cloe)
Tag.create!(dish: f7, restaurant: french_rest3, user: cloe)
Tag.create!(dish: f3, restaurant: french_rest4, user: lenoy)
Tag.create!(dish: f2, restaurant: french_rest4, user: lenoy)
Tag.create!(dish: f8, restaurant: french_rest4, user: cloe)
Tag.create!(dish: f9, restaurant: french_rest4, user: cloe)
Tag.create!(dish: f1, restaurant: french_rest4, user: lenoy)
Tag.create!(dish: f10, restaurant: french_rest5, user: lenoy)
Tag.create!(dish: f8, restaurant: french_rest5, user: lenoy)
Tag.create!(dish: f10, restaurant: french_rest6, user: lenoy)
Tag.create!(dish: f1, restaurant: french_rest7, user: mg)
Tag.create!(dish: f5, restaurant: french_rest7, user: mg)
Tag.create!(dish: f7, restaurant: french_rest7, user: cloe)





#Upvotes for restaurants
puts "Creating upvotes for Indian restaurants"
Upvote.create!(restaurant: indian_rest1, user: debora)
Upvote.create!(restaurant: indian_rest1, user: nachiket)
Upvote.create!(restaurant: indian_rest1, user: lea)
Upvote.create!(restaurant: indian_rest2, user: debora)
Upvote.create!(restaurant: indian_rest2, user: nachiket)
Upvote.create!(restaurant: indian_rest2, user: lea)
Upvote.create!(restaurant: indian_rest3, user: debora)
Upvote.create!(restaurant: indian_rest3, user: nachiket)
Upvote.create!(restaurant: indian_rest3, user: lea)
Upvote.create!(restaurant: indian_rest4, user: nachiket)
Upvote.create!(restaurant: indian_rest5, user: nachiket)
Upvote.create!(restaurant: indian_rest5, user: lea)
Upvote.create!(restaurant: indian_rest6, user: debora)
Upvote.create!(restaurant: indian_rest7, user: debora)
Upvote.create!(restaurant: indian_rest7, user: nachiket)
Upvote.create!(restaurant: indian_rest7, user: lea)
Upvote.create!(restaurant: indian_rest8, user: lea)
Upvote.create!(restaurant: indian_rest8, user: debora)
Upvote.create!(restaurant: indian_rest9, user: nachiket)


puts "Creating upvotes for Japanese restaurants"
Upvote.create!(restaurant: japan_rest1, user: wince)
Upvote.create!(restaurant: japan_rest1, user: timothy)
Upvote.create!(restaurant: japan_rest1, user: kyle)
Upvote.create!(restaurant: japan_rest2, user: wince)
Upvote.create!(restaurant: japan_rest2, user: timothy)
Upvote.create!(restaurant: japan_rest2, user: kyle)
Upvote.create!(restaurant: japan_rest3, user: wince)
Upvote.create!(restaurant: japan_rest3, user: timothy)
Upvote.create!(restaurant: japan_rest3, user: kyle)
Upvote.create!(restaurant: japan_rest4, user: timothy)
Upvote.create!(restaurant: japan_rest5, user: timothy)
Upvote.create!(restaurant: japan_rest5, user: kyle)
Upvote.create!(restaurant: japan_rest6, user: wince)
Upvote.create!(restaurant: japan_rest7, user: wince)
Upvote.create!(restaurant: japan_rest7, user: timothy)
Upvote.create!(restaurant: japan_rest7, user: kyle)
Upvote.create!(restaurant: japan_rest8, user: kyle)
Upvote.create!(restaurant: japan_rest8, user: wince)
Upvote.create!(restaurant: japan_rest9, user: timothy)
Upvote.create!(restaurant: japan_rest10, user: wince)

puts "Creating upvotes for Portuguese restaurants"
Upvote.create!(restaurant: port_rest1, user: aline)
Upvote.create!(restaurant: port_rest1, user: thomas)
Upvote.create!(restaurant: port_rest1, user: junior)
Upvote.create!(restaurant: port_rest2, user: aline)
Upvote.create!(restaurant: port_rest2, user: thomas)
Upvote.create!(restaurant: port_rest2, user: junior)
Upvote.create!(restaurant: port_rest3, user: aline)
Upvote.create!(restaurant: port_rest3, user: thomas)
Upvote.create!(restaurant: port_rest3, user: junior)
Upvote.create!(restaurant: port_rest4, user: thomas)
Upvote.create!(restaurant: port_rest5, user: thomas)
Upvote.create!(restaurant: port_rest5, user: junior)
Upvote.create!(restaurant: port_rest6, user: aline)
Upvote.create!(restaurant: port_rest7, user: aline)
Upvote.create!(restaurant: port_rest7, user: thomas)
Upvote.create!(restaurant: port_rest7, user: junior)
Upvote.create!(restaurant: port_rest8, user: junior)
Upvote.create!(restaurant: port_rest8, user: aline)
Upvote.create!(restaurant: port_rest9, user: thomas)
Upvote.create!(restaurant: port_rest10, user: aline)


puts "Creating upvotes for Italian restaurants"
Upvote.create!(restaurant: italian_rest1, user: emily)
Upvote.create!(restaurant: italian_rest1, user: nirali)
Upvote.create!(restaurant: italian_rest1, user: ekaterina)
Upvote.create!(restaurant: italian_rest2, user: emily)
Upvote.create!(restaurant: italian_rest2, user: nirali)
Upvote.create!(restaurant: italian_rest2, user: ekaterina)
Upvote.create!(restaurant: italian_rest3, user: emily)
Upvote.create!(restaurant: italian_rest3, user: nirali)
Upvote.create!(restaurant: italian_rest3, user: ekaterina)
Upvote.create!(restaurant: italian_rest4, user: nirali)
Upvote.create!(restaurant: italian_rest5, user: nirali)
Upvote.create!(restaurant: italian_rest5, user: ekaterina)
Upvote.create!(restaurant: italian_rest6, user: emily)
Upvote.create!(restaurant: italian_rest7, user: emily)
Upvote.create!(restaurant: italian_rest7, user: nirali)
Upvote.create!(restaurant: italian_rest7, user: ekaterina)
Upvote.create!(restaurant: italian_rest8, user: ekaterina)
Upvote.create!(restaurant: italian_rest8, user: emily)
Upvote.create!(restaurant: italian_rest9, user: nirali)
Upvote.create!(restaurant: italian_rest10, user: emily)

puts "Creating upvotes for Chinese restaurants"
Upvote.create!(restaurant: chinese_rest1, user: poyan)
Upvote.create!(restaurant: chinese_rest1, user: meagan)
Upvote.create!(restaurant: chinese_rest1, user: rebecca)
Upvote.create!(restaurant: chinese_rest2, user: poyan)
Upvote.create!(restaurant: chinese_rest2, user: meagan)
Upvote.create!(restaurant: chinese_rest2, user: rebecca)
Upvote.create!(restaurant: chinese_rest3, user: poyan)
Upvote.create!(restaurant: chinese_rest3, user: meagan)
Upvote.create!(restaurant: chinese_rest3, user: rebecca)
Upvote.create!(restaurant: chinese_rest4, user: meagan)
Upvote.create!(restaurant: chinese_rest5, user: meagan)
Upvote.create!(restaurant: chinese_rest5, user: rebecca)
Upvote.create!(restaurant: chinese_rest6, user: poyan)
Upvote.create!(restaurant: chinese_rest7, user: poyan)
Upvote.create!(restaurant: chinese_rest7, user: meagan)
Upvote.create!(restaurant: chinese_rest7, user: rebecca)
Upvote.create!(restaurant: chinese_rest8, user: rebecca)
Upvote.create!(restaurant: chinese_rest8, user: poyan)
Upvote.create!(restaurant: chinese_rest9, user: meagan)
Upvote.create!(restaurant: chinese_rest10, user: poyan)

puts "Creating upvotes for Greek restaurants"
Upvote.create!(restaurant: greek_rest1, user: kahina)
Upvote.create!(restaurant: greek_rest1, user: francesca)
Upvote.create!(restaurant: greek_rest1, user: erika)
Upvote.create!(restaurant: greek_rest2, user: kahina)
Upvote.create!(restaurant: greek_rest2, user: francesca)
Upvote.create!(restaurant: greek_rest2, user: erika)
Upvote.create!(restaurant: greek_rest3, user: kahina)
Upvote.create!(restaurant: greek_rest3, user: francesca)
Upvote.create!(restaurant: greek_rest3, user: erika)
Upvote.create!(restaurant: greek_rest4, user: francesca)
Upvote.create!(restaurant: greek_rest5, user: francesca)
Upvote.create!(restaurant: greek_rest5, user: erika)
Upvote.create!(restaurant: greek_rest6, user: kahina)
Upvote.create!(restaurant: greek_rest7, user: kahina)
Upvote.create!(restaurant: greek_rest7, user: francesca)
Upvote.create!(restaurant: greek_rest7, user: erika)
Upvote.create!(restaurant: greek_rest8, user: erika)
Upvote.create!(restaurant: greek_rest8, user: kahina)
Upvote.create!(restaurant: greek_rest9, user: francesca)
Upvote.create!(restaurant: greek_rest10, user: kahina)

puts "Creating upvotes for Mexican restaurants"
Upvote.create!(restaurant: mexican_rest1, user: alexander)
Upvote.create!(restaurant: mexican_rest1, user: millie)
Upvote.create!(restaurant: mexican_rest1, user: arthur)
Upvote.create!(restaurant: mexican_rest2, user: alexander)
Upvote.create!(restaurant: mexican_rest2, user: millie)
Upvote.create!(restaurant: mexican_rest2, user: arthur)
Upvote.create!(restaurant: mexican_rest3, user: alexander)
Upvote.create!(restaurant: mexican_rest3, user: millie)
Upvote.create!(restaurant: mexican_rest3, user: arthur)
Upvote.create!(restaurant: mexican_rest4, user: millie)
Upvote.create!(restaurant: mexican_rest5, user: millie)
Upvote.create!(restaurant: mexican_rest5, user: arthur)
Upvote.create!(restaurant: mexican_rest6, user: alexander)
Upvote.create!(restaurant: mexican_rest7, user: alexander)
Upvote.create!(restaurant: mexican_rest7, user: millie)
Upvote.create!(restaurant: mexican_rest7, user: arthur)
Upvote.create!(restaurant: mexican_rest8, user: arthur)
Upvote.create!(restaurant: mexican_rest8, user: alexander)
Upvote.create!(restaurant: mexican_rest9, user: millie)

puts "Creating upvotes for Korean restaurants"
Upvote.create!(restaurant: korean_rest1, user: miguel)
Upvote.create!(restaurant: korean_rest1, user: choong)
Upvote.create!(restaurant: korean_rest2, user: miguel)
Upvote.create!(restaurant: korean_rest2, user: choong)
Upvote.create!(restaurant: korean_rest2, user: ryan)
Upvote.create!(restaurant: korean_rest3, user: miguel)
Upvote.create!(restaurant: korean_rest3, user: choong)
Upvote.create!(restaurant: korean_rest3, user: ryan)
Upvote.create!(restaurant: korean_rest4, user: choong)
Upvote.create!(restaurant: korean_rest5, user: choong)
Upvote.create!(restaurant: korean_rest5, user: ryan)
Upvote.create!(restaurant: korean_rest6, user: miguel)


puts "Creating upvotes for Middle-Eastern restaurants"
Upvote.create!(restaurant: middle_eastern_rest1, user: michel)
Upvote.create!(restaurant: middle_eastern_rest1, user: boran)
Upvote.create!(restaurant: middle_eastern_rest1, user: stephane)
Upvote.create!(restaurant: middle_eastern_rest2, user: michel)
Upvote.create!(restaurant: middle_eastern_rest2, user: boran)
Upvote.create!(restaurant: middle_eastern_rest2, user: stephane)
Upvote.create!(restaurant: middle_eastern_rest3, user: michel)
Upvote.create!(restaurant: middle_eastern_rest3, user: boran)
Upvote.create!(restaurant: middle_eastern_rest3, user: stephane)
Upvote.create!(restaurant: middle_eastern_rest4, user: boran)
Upvote.create!(restaurant: middle_eastern_rest5, user: boran)
Upvote.create!(restaurant: middle_eastern_rest5, user: stephane)
Upvote.create!(restaurant: middle_eastern_rest6, user: michel)
Upvote.create!(restaurant: middle_eastern_rest7, user: michel)
Upvote.create!(restaurant: middle_eastern_rest7, user: boran)
Upvote.create!(restaurant: middle_eastern_rest7, user: stephane)


puts "Creating upvotes for French restaurants"
Upvote.create!(restaurant: french_rest1, user: lenoy)
Upvote.create!(restaurant: french_rest1, user: cloe)
Upvote.create!(restaurant: french_rest1, user: mg)
Upvote.create!(restaurant: french_rest2, user: lenoy)
Upvote.create!(restaurant: french_rest2, user: cloe)
Upvote.create!(restaurant: french_rest2, user: mg)
Upvote.create!(restaurant: french_rest3, user: lenoy)
Upvote.create!(restaurant: french_rest3, user: cloe)
Upvote.create!(restaurant: french_rest3, user: mg)
Upvote.create!(restaurant: french_rest4, user: cloe)
Upvote.create!(restaurant: french_rest5, user: cloe)
Upvote.create!(restaurant: french_rest5, user: mg)
Upvote.create!(restaurant: french_rest6, user: lenoy)
Upvote.create!(restaurant: french_rest7, user: lenoy)
Upvote.create!(restaurant: french_rest7, user: cloe)
Upvote.create!(restaurant: french_rest7, user: mg)




#Favorite restaurants bu user
puts "Creating favorite restaurants for Debora"
Favorite.create!(restaurant: indian_rest1, user: debora)
Favorite.create!(restaurant: indian_rest2, user: debora)
Favorite.create!(restaurant: indian_rest3, user: debora)
Favorite.create!(restaurant: korean_rest2, user: debora)
Favorite.create!(restaurant: port_rest1, user: debora)
Favorite.create!(restaurant: port_rest3, user: debora)
Favorite.create!(restaurant: port_rest3, user: debora)
Favorite.create!(restaurant: french_rest3, user: debora)
Favorite.create!(restaurant: mexican_rest2, user: debora)
Favorite.create!(restaurant: greek_rest3, user: debora)
Favorite.create!(restaurant: middle_eastern_rest1, user: debora)
Favorite.create!(restaurant: chinese_rest2, user: debora)
Favorite.create!(restaurant: japan_rest1, user: debora)
Favorite.create!(restaurant: japan_rest3, user: debora)


puts "Creating favorite restaurants for Nachiket"
Favorite.create!(restaurant: indian_rest1, user: nachiket)
Favorite.create!(restaurant: indian_rest2, user: nachiket)
Favorite.create!(restaurant: indian_rest9, user: nachiket)
Favorite.create!(restaurant: korean_rest2, user: nachiket)
Favorite.create!(restaurant: port_rest1, user: nachiket)
Favorite.create!(restaurant: chinese_rest3, user: nachiket)
Favorite.create!(restaurant: port_rest3, user: nachiket)
Favorite.create!(restaurant: french_rest3, user: nachiket)
Favorite.create!(restaurant: mexican_rest2, user: nachiket)
Favorite.create!(restaurant: greek_rest3, user: nachiket)
Favorite.create!(restaurant: middle_eastern_rest3, user: nachiket)
Favorite.create!(restaurant: chinese_rest2, user: nachiket)
Favorite.create!(restaurant: japan_rest5, user: nachiket)
Favorite.create!(restaurant: japan_rest2, user: nachiket)

puts "Creating favorite restaurants for Lea"
Favorite.create!(restaurant: greek_rest1, user: lea)
Favorite.create!(restaurant: indian_rest2, user: lea)
Favorite.create!(restaurant: indian_rest5, user: lea)
Favorite.create!(restaurant: korean_rest2, user: lea)
Favorite.create!(restaurant: port_rest1, user: lea)
Favorite.create!(restaurant: port_rest3, user: lea)
Favorite.create!(restaurant: port_rest3, user: lea)
Favorite.create!(restaurant: french_rest3, user: lea)
Favorite.create!(restaurant: mexican_rest2, user: lea)
Favorite.create!(restaurant: greek_rest5, user: lea)
Favorite.create!(restaurant: middle_eastern_rest3, user: lea)
Favorite.create!(restaurant: chinese_rest3, user: lea)
Favorite.create!(restaurant: japan_rest2, user: lea)
Favorite.create!(restaurant: japan_rest3, user: lea)


puts "Creating favorite restaurants for Wince"
Favorite.create!(restaurant: french_rest1, user: wince)
Favorite.create!(restaurant: french_rest2, user: wince)
Favorite.create!(restaurant: indian_rest5, user: wince)
Favorite.create!(restaurant: korean_rest2, user: wince)
Favorite.create!(restaurant: chinese_rest1, user: wince)
Favorite.create!(restaurant: japan_rest3, user: wince)
Favorite.create!(restaurant: korean_rest3, user: wince)
Favorite.create!(restaurant: french_rest3, user: wince)
Favorite.create!(restaurant: mexican_rest2, user: wince)
Favorite.create!(restaurant: greek_rest5, user: wince)
Favorite.create!(restaurant: middle_eastern_rest3, user: wince)
Favorite.create!(restaurant: chinese_rest3, user: wince)
Favorite.create!(restaurant: japan_rest5, user: wince)
Favorite.create!(restaurant: japan_rest7, user: wince)


puts "Creating favorite restaurants for Timothy"
Favorite.create!(restaurant: japan_rest1, user: timothy)
Favorite.create!(restaurant: middle_eastern_rest2, user: timothy)
Favorite.create!(restaurant: greek_rest5, user: timothy)
Favorite.create!(restaurant: korean_rest2, user: timothy)
Favorite.create!(restaurant: chinese_rest1, user: timothy)
Favorite.create!(restaurant: japan_rest3, user: timothy)
Favorite.create!(restaurant: korean_rest5, user: timothy)
Favorite.create!(restaurant: french_rest7, user: timothy)
Favorite.create!(restaurant: mexican_rest5, user: timothy)
Favorite.create!(restaurant: greek_rest8, user: timothy)
Favorite.create!(restaurant: middle_eastern_rest7, user: timothy)
Favorite.create!(restaurant: chinese_rest8, user: timothy)
Favorite.create!(restaurant: japan_rest4, user: timothy)
Favorite.create!(restaurant: japan_rest8, user: timothy)

puts "Creating favorite restaurants for Kyle"
Favorite.create!(restaurant: japan_rest1, user: timothy)
Favorite.create!(restaurant: middle_eastern_rest2, user: timothy)
Favorite.create!(restaurant: port_rest5, user: timothy)
Favorite.create!(restaurant: port_rest2, user: timothy)
Favorite.create!(restaurant: chinese_rest1, user: timothy)
Favorite.create!(restaurant: japan_rest3, user: timothy)
Favorite.create!(restaurant: korean_rest5, user: timothy)
Favorite.create!(restaurant: french_rest7, user: timothy)
Favorite.create!(restaurant: mexican_rest5, user: timothy)
Favorite.create!(restaurant: greek_rest8, user: timothy)
Favorite.create!(restaurant: mexican_rest7, user: timothy)
Favorite.create!(restaurant: chinese_rest8, user: timothy)
Favorite.create!(restaurant: japan_rest5, user: timothy)
Favorite.create!(restaurant: japan_rest8, user: timothy)

puts "Creating favorite restaurants for Aline"
Favorite.create!(restaurant: port_rest1, user: aline)
Favorite.create!(restaurant: middle_eastern_rest1, user: aline)
Favorite.create!(restaurant: greek_rest5, user: aline)
Favorite.create!(restaurant: french_rest2, user: aline)
Favorite.create!(restaurant: chinese_rest1, user: aline)
Favorite.create!(restaurant: japan_rest3, user: aline)
Favorite.create!(restaurant: korean_rest5, user: aline)
Favorite.create!(restaurant: french_rest7, user: aline)
Favorite.create!(restaurant: mexican_rest5, user: aline)
Favorite.create!(restaurant: mexican_rest8, user: aline)
Favorite.create!(restaurant: middle_eastern_rest7, user: aline)
Favorite.create!(restaurant: chinese_rest8, user: aline)
Favorite.create!(restaurant: port_rest4, user: aline)
Favorite.create!(restaurant: port_rest8, user: aline)


puts "Creating favorite restaurants for thomas"
Favorite.create!(restaurant: port_rest2, user: thomas)
Favorite.create!(restaurant: middle_eastern_rest3, user: thomas)
Favorite.create!(restaurant: greek_rest1, user: thomas)
Favorite.create!(restaurant: french_rest3, user: thomas)
Favorite.create!(restaurant: chinese_rest2, user: thomas)
Favorite.create!(restaurant: greek_rest3, user: thomas)
Favorite.create!(restaurant: korean_rest1, user: thomas)
Favorite.create!(restaurant: french_rest5, user: thomas)
Favorite.create!(restaurant: mexican_rest2, user: thomas)
Favorite.create!(restaurant: mexican_rest1, user: thomas)
Favorite.create!(restaurant: middle_eastern_rest1, user: thomas)
Favorite.create!(restaurant: chinese_rest8, user: thomas)
Favorite.create!(restaurant: port_rest5, user: thomas)
Favorite.create!(restaurant: port_rest7, user: thomas)


puts "Creating favorite restaurants for Junior"
Favorite.create!(restaurant: port_rest1, user: junior)
Favorite.create!(restaurant: middle_eastern_rest2, user: junior)
Favorite.create!(restaurant: greek_rest7, user: junior)
Favorite.create!(restaurant: french_rest3, user: junior)
Favorite.create!(restaurant: chinese_rest8, user: junior)
Favorite.create!(restaurant: japan_rest2, user: junior)
Favorite.create!(restaurant: korean_rest2, user: junior)
Favorite.create!(restaurant: french_rest7, user: junior)
Favorite.create!(restaurant: mexican_rest5, user: junior)
Favorite.create!(restaurant: mexican_rest8, user: junior)
Favorite.create!(restaurant: middle_eastern_rest7, user: junior)
Favorite.create!(restaurant: chinese_rest8, user: junior)
Favorite.create!(restaurant: port_rest2, user: junior)
Favorite.create!(restaurant: port_rest3, user: junior)


puts "Creating favorite restaurants for Ekaterina"
Favorite.create!(restaurant: italian_rest1, user: ekaterina)
Favorite.create!(restaurant: middle_eastern_rest2, user: ekaterina)
Favorite.create!(restaurant: greek_rest1, user: ekaterina)
Favorite.create!(restaurant: french_rest1, user: ekaterina)
Favorite.create!(restaurant: chinese_rest1, user: ekaterina)
Favorite.create!(restaurant: chinese_rest3, user: ekaterina)
Favorite.create!(restaurant: mexican_rest5, user: ekaterina)
Favorite.create!(restaurant: french_rest7, user: ekaterina)
Favorite.create!(restaurant: mexican_rest7, user: ekaterina)
Favorite.create!(restaurant: port_rest8, user: ekaterina)
Favorite.create!(restaurant: middle_eastern_rest3, user: ekaterina)
Favorite.create!(restaurant: chinese_rest5, user: ekaterina)
Favorite.create!(restaurant: italian_rest4, user: ekaterina)
Favorite.create!(restaurant: italian_rest8, user: ekaterina)

puts "Creating favorite restaurants for Emily"
Favorite.create!(restaurant: italian_rest1, user: emily)
Favorite.create!(restaurant: port_rest1, user: emily)
Favorite.create!(restaurant: greek_rest5, user: emily)
Favorite.create!(restaurant: french_rest2, user: emily)
Favorite.create!(restaurant: chinese_rest2, user: emily)
Favorite.create!(restaurant: japan_rest8, user: emily)
Favorite.create!(restaurant: korean_rest3, user: emily)
Favorite.create!(restaurant: french_rest2, user: emily)
Favorite.create!(restaurant: mexican_rest5, user: emily)
Favorite.create!(restaurant: indian_rest8, user: emily)
Favorite.create!(restaurant: middle_eastern_rest7, user: emily)
Favorite.create!(restaurant: greek_rest3, user: emily)
Favorite.create!(restaurant: italian_rest2, user: emily)
Favorite.create!(restaurant: italian_rest5, user: emily)

puts "Creating favorite restaurants for Nirali"
Favorite.create!(restaurant: italian_rest5, user: nirali)
Favorite.create!(restaurant: port_rest3, user: nirali)
Favorite.create!(restaurant: indian_rest5, user: nirali)
Favorite.create!(restaurant: french_rest2, user: nirali)
Favorite.create!(restaurant: chinese_rest1, user: nirali)
Favorite.create!(restaurant: japan_rest8, user: nirali)
Favorite.create!(restaurant: korean_rest2, user: nirali)
Favorite.create!(restaurant: french_rest2, user: nirali)
Favorite.create!(restaurant: indian_rest5, user: nirali)
Favorite.create!(restaurant: indian_rest8, user: nirali)
Favorite.create!(restaurant: middle_eastern_rest7, user: nirali)
Favorite.create!(restaurant: greek_rest2, user: nirali)
Favorite.create!(restaurant: italian_rest7, user: nirali)
Favorite.create!(restaurant: italian_rest8, user: nirali)

puts "Creating favorite restaurants for Poyan"
Favorite.create!(restaurant: chinese_rest5, user: poyan)
Favorite.create!(restaurant: port_rest3, user: poyan)
Favorite.create!(restaurant: indian_rest5, user: poyan)
Favorite.create!(restaurant: middle_eastern_rest2, user: poyan)
Favorite.create!(restaurant: chinese_rest1, user: poyan)
Favorite.create!(restaurant: japan_rest8, user: poyan)
Favorite.create!(restaurant: korean_rest2, user: poyan)
Favorite.create!(restaurant: french_rest2, user: poyan)
Favorite.create!(restaurant: japan_rest5, user: poyan)
Favorite.create!(restaurant: indian_rest8, user: poyan)
Favorite.create!(restaurant: middle_eastern_rest1, user: poyan)
Favorite.create!(restaurant: greek_rest5, user: poyan)
Favorite.create!(restaurant: chinese_rest7, user: poyan)
Favorite.create!(restaurant: chinese_rest8, user: poyan)

puts "Creating favorite restaurants for Meagan"
Favorite.create!(restaurant: chinese_rest1, user: meagan)
Favorite.create!(restaurant: port_rest5, user: meagan)
Favorite.create!(restaurant: indian_rest5, user: meagan)
Favorite.create!(restaurant: middle_eastern_rest7, user: meagan)
Favorite.create!(restaurant: chinese_rest2, user: meagan)
Favorite.create!(restaurant: japan_rest3, user: meagan)
Favorite.create!(restaurant: korean_rest2, user: meagan)
Favorite.create!(restaurant: french_rest2, user: meagan)
Favorite.create!(restaurant: japan_rest5, user: meagan)
Favorite.create!(restaurant: indian_rest8, user: meagan)
Favorite.create!(restaurant: middle_eastern_rest1, user: meagan)
Favorite.create!(restaurant: greek_rest1, user: meagan)
Favorite.create!(restaurant: chinese_rest7, user: meagan)
Favorite.create!(restaurant: chinese_rest3, user: meagan)

puts "Creating favorite restaurants for Rebecca"
Favorite.create!(restaurant: chinese_rest7, user: rebecca)
Favorite.create!(restaurant: port_rest2, user: rebecca)
Favorite.create!(restaurant: indian_rest5, user: rebecca)
Favorite.create!(restaurant: middle_eastern_rest7, user: rebecca)
Favorite.create!(restaurant: chinese_rest1, user: rebecca)
Favorite.create!(restaurant: japan_rest1, user: rebecca)
Favorite.create!(restaurant: korean_rest1, user: rebecca)
Favorite.create!(restaurant: french_rest1, user: rebecca)
Favorite.create!(restaurant: japan_rest5, user: rebecca)
Favorite.create!(restaurant: indian_rest7, user: rebecca)
Favorite.create!(restaurant: middle_eastern_rest7, user: rebecca)
Favorite.create!(restaurant: indian_rest1, user: rebecca)
Favorite.create!(restaurant: chinese_rest2, user: rebecca)
Favorite.create!(restaurant: chinese_rest7, user: rebecca)

puts "Creating favorite restaurants for Kahina"
Favorite.create!(restaurant: greek_rest7, user: kahina)
Favorite.create!(restaurant: middle_eastern_rest2, user: kahina)
Favorite.create!(restaurant: indian_rest5, user: kahina)
Favorite.create!(restaurant: middle_eastern_rest7, user: kahina)
Favorite.create!(restaurant: greek_rest1, user: kahina)
Favorite.create!(restaurant: middle_eastern_rest1, user: kahina)
Favorite.create!(restaurant: korean_rest2, user: kahina)
Favorite.create!(restaurant: french_rest2, user: kahina)
Favorite.create!(restaurant: mexican_rest5, user: kahina)
Favorite.create!(restaurant: indian_rest7, user: kahina)
Favorite.create!(restaurant: middle_eastern_rest1, user: kahina)
Favorite.create!(restaurant: indian_rest2, user: kahina)
Favorite.create!(restaurant: greek_rest2, user: kahina)
Favorite.create!(restaurant: greek_rest7, user: kahina)


puts "Creating favorite restaurants for Francesca"
Favorite.create!(restaurant: greek_rest1, user: francesca)
Favorite.create!(restaurant: middle_eastern_rest2, user: francesca)
Favorite.create!(restaurant: indian_rest5, user: francesca)
Favorite.create!(restaurant: middle_eastern_rest7, user: francesca)
Favorite.create!(restaurant: greek_rest5, user: francesca)
Favorite.create!(restaurant: middle_eastern_rest1, user: francesca)
Favorite.create!(restaurant: korean_rest2, user: francesca)
Favorite.create!(restaurant: french_rest2, user: francesca)
Favorite.create!(restaurant: mexican_rest5, user: francesca)
Favorite.create!(restaurant: indian_rest7, user: francesca)
Favorite.create!(restaurant: middle_eastern_rest1, user: francesca)
Favorite.create!(restaurant: indian_rest2, user: francesca)
Favorite.create!(restaurant: greek_rest8, user: francesca)
Favorite.create!(restaurant: greek_rest3, user: francesca)


puts "Creating favorite restaurants for Erika"
Favorite.create!(restaurant: greek_rest1, user: erika)
Favorite.create!(restaurant: middle_eastern_rest1, user: erika)
Favorite.create!(restaurant: indian_rest5, user: erika)
Favorite.create!(restaurant: middle_eastern_rest7, user: erika)
Favorite.create!(restaurant: greek_rest5, user: erika)
Favorite.create!(restaurant: middle_eastern_rest1, user: erika)
Favorite.create!(restaurant: korean_rest5, user: erika)
Favorite.create!(restaurant: french_rest3, user: erika)
Favorite.create!(restaurant: mexican_rest5, user: erika)
Favorite.create!(restaurant: indian_rest2, user: erika)
Favorite.create!(restaurant: middle_eastern_rest5, user: erika)
Favorite.create!(restaurant: indian_rest3, user: erika)
Favorite.create!(restaurant: greek_rest8, user: erika)
Favorite.create!(restaurant: greek_rest3, user: erika)

puts "Creating favorite restaurants for Alexander"
Favorite.create!(restaurant: mexican_rest1, user: alexander)
Favorite.create!(restaurant: middle_eastern_rest2, user: alexander)
Favorite.create!(restaurant: indian_rest5, user: alexander)
Favorite.create!(restaurant: greek_rest7, user: alexander)
Favorite.create!(restaurant: mexican_rest5, user: alexander)
Favorite.create!(restaurant: korean_rest1, user: alexander)
Favorite.create!(restaurant: korean_rest5, user: alexander)
Favorite.create!(restaurant: french_rest1, user: alexander)
Favorite.create!(restaurant: mexican_rest5, user: alexander)
Favorite.create!(restaurant: indian_rest1, user: alexander)
Favorite.create!(restaurant: middle_eastern_rest7, user: alexander)
Favorite.create!(restaurant: indian_rest1, user: alexander)
Favorite.create!(restaurant: mexican_rest8, user: alexander)
Favorite.create!(restaurant: mexican_rest3, user: alexander)

puts "Creating favorite restaurants for Millie"
Favorite.create!(restaurant: mexican_rest1, user: millie)
Favorite.create!(restaurant: korean_rest1, user: millie)
Favorite.create!(restaurant: indian_rest5, user: millie)
Favorite.create!(restaurant: korean_rest6, user: millie)
Favorite.create!(restaurant: mexican_rest5, user: millie)
Favorite.create!(restaurant: middle_eastern_rest1, user: millie)
Favorite.create!(restaurant: korean_rest5, user: millie)
Favorite.create!(restaurant: french_rest3, user: millie)
Favorite.create!(restaurant: mexican_rest2, user: millie)
Favorite.create!(restaurant: indian_rest2, user: millie)
Favorite.create!(restaurant: greek_rest5, user: millie)
Favorite.create!(restaurant: indian_rest3, user: millie)
Favorite.create!(restaurant: mexican_rest8, user: millie)
Favorite.create!(restaurant: mexican_rest3, user: millie)

puts "Creating favorite restaurants for Arthur"
Favorite.create!(restaurant: mexican_rest7, user: arthur)
Favorite.create!(restaurant: korean_rest1, user: arthur)
Favorite.create!(restaurant: indian_rest3, user: arthur)
Favorite.create!(restaurant: korean_rest6, user: arthur)
Favorite.create!(restaurant: mexican_rest5, user: arthur)
Favorite.create!(restaurant: middle_eastern_rest1, user: arthur)
Favorite.create!(restaurant: korean_rest5, user: arthur)
Favorite.create!(restaurant: french_rest3, user: arthur)
Favorite.create!(restaurant: mexican_rest2, user: arthur)
Favorite.create!(restaurant: indian_rest8, user: arthur)
Favorite.create!(restaurant: greek_rest8, user: arthur)
Favorite.create!(restaurant: port_rest3, user: arthur)
Favorite.create!(restaurant: mexican_rest8, user: arthur)
Favorite.create!(restaurant: mexican_rest3, user: arthur)


puts "Creating favorite restaurants for Miguel"
Favorite.create!(restaurant: korean_rest1, user: miguel)
Favorite.create!(restaurant: korean_rest2, user: miguel)
Favorite.create!(restaurant: indian_rest1, user: miguel)
Favorite.create!(restaurant: korean_rest6, user: miguel)
Favorite.create!(restaurant: korean_rest5, user: miguel)
Favorite.create!(restaurant: middle_eastern_rest1, user: miguel)
Favorite.create!(restaurant: korean_rest5, user: miguel)
Favorite.create!(restaurant: french_rest3, user: miguel)
Favorite.create!(restaurant: italian_rest2, user: miguel)
Favorite.create!(restaurant: indian_rest8, user: miguel)
Favorite.create!(restaurant: chinese_rest2, user: miguel)
Favorite.create!(restaurant: port_rest2, user: miguel)
Favorite.create!(restaurant: chinese_rest8, user: miguel)
Favorite.create!(restaurant: korean_rest3, user: miguel)

puts "Creating favorite restaurants for Choong"
Favorite.create!(restaurant: korean_rest1, user: choong)
Favorite.create!(restaurant: korean_rest2, user: choong)
Favorite.create!(restaurant: indian_rest8, user: choong)
Favorite.create!(restaurant: korean_rest6, user: choong)
Favorite.create!(restaurant: korean_rest5, user: choong)
Favorite.create!(restaurant: middle_eastern_rest7, user: choong)
Favorite.create!(restaurant: korean_rest5, user: choong)
Favorite.create!(restaurant: french_rest2, user: choong)
Favorite.create!(restaurant: italian_rest1, user: choong)
Favorite.create!(restaurant: indian_rest7, user: choong)
Favorite.create!(restaurant: chinese_rest3, user: choong)
Favorite.create!(restaurant: port_rest1, user: choong)
Favorite.create!(restaurant: chinese_rest8, user: choong)
Favorite.create!(restaurant: korean_rest3, user: choong)

puts "Creating favorite restaurants for Ryan"
Favorite.create!(restaurant: korean_rest1, user: ryan)
Favorite.create!(restaurant: korean_rest2, user: ryan)
Favorite.create!(restaurant: indian_rest7, user: ryan)
Favorite.create!(restaurant: korean_rest6, user: ryan)
Favorite.create!(restaurant: mexican_rest5, user: ryan)
Favorite.create!(restaurant: middle_eastern_rest3, user: ryan)
Favorite.create!(restaurant: korean_rest5, user: ryan)
Favorite.create!(restaurant: french_rest2, user: ryan)
Favorite.create!(restaurant: japan_rest2, user: ryan)
Favorite.create!(restaurant: indian_rest8, user: ryan)
Favorite.create!(restaurant: chinese_rest2, user: ryan)
Favorite.create!(restaurant: port_rest2, user: ryan)
Favorite.create!(restaurant: chinese_rest8, user: ryan)
Favorite.create!(restaurant: korean_rest3, user: ryan)

puts "Creating favorite restaurants for Michel"
Favorite.create!(restaurant: middle_eastern_rest1, user: michel)
Favorite.create!(restaurant: middle_eastern_rest2, user: michel)
Favorite.create!(restaurant: indian_rest7, user: michel)
Favorite.create!(restaurant: middle_eastern_rest7, user: michel)
Favorite.create!(restaurant: mexican_rest5, user: michel)
Favorite.create!(restaurant: korean_rest3, user: michel)
Favorite.create!(restaurant: middle_eastern_rest5, user: michel)
Favorite.create!(restaurant: french_rest2, user: michel)
Favorite.create!(restaurant: japan_rest2, user: michel)
Favorite.create!(restaurant: indian_rest8, user: michel)
Favorite.create!(restaurant: chinese_rest2, user: michel)
Favorite.create!(restaurant: port_rest2, user: michel)
Favorite.create!(restaurant: chinese_rest8, user: michel)
Favorite.create!(restaurant: middle_eastern_rest3, user: michel)


puts "Creating favorite restaurants for Boran"
Favorite.create!(restaurant: middle_eastern_rest1, user: boran)
Favorite.create!(restaurant: middle_eastern_rest2, user: boran)
Favorite.create!(restaurant: korean_rest5, user: boran)
Favorite.create!(restaurant: greek_rest7, user: boran)
Favorite.create!(restaurant: mexican_rest5, user: boran)
Favorite.create!(restaurant: korean_rest3, user: boran)
Favorite.create!(restaurant: middle_eastern_rest5, user: boran)
Favorite.create!(restaurant: french_rest2, user: boran)
Favorite.create!(restaurant: japan_rest2, user: boran)
Favorite.create!(restaurant: indian_rest8, user: boran)
Favorite.create!(restaurant: chinese_rest2, user: boran)
Favorite.create!(restaurant: port_rest2, user: boran)
Favorite.create!(restaurant: chinese_rest2, user: boran)
Favorite.create!(restaurant: middle_eastern_rest3, user: boran)

puts "Creating favorite restaurants for Stephane"
Favorite.create!(restaurant: middle_eastern_rest1, user: stephane)
Favorite.create!(restaurant: french_rest2, user: stephane)
Favorite.create!(restaurant: korean_rest5, user: stephane)
Favorite.create!(restaurant: greek_rest7, user: stephane)
Favorite.create!(restaurant: greek_rest5, user: stephane)
Favorite.create!(restaurant: korean_rest3, user: stephane)
Favorite.create!(restaurant: japan_rest5, user: stephane)
Favorite.create!(restaurant: french_rest2, user: stephane)
Favorite.create!(restaurant: japan_rest2, user: stephane)
Favorite.create!(restaurant: french_rest7, user: stephane)
Favorite.create!(restaurant: chinese_rest2, user: stephane)
Favorite.create!(restaurant: port_rest7, user: stephane)
Favorite.create!(restaurant: chinese_rest1, user: stephane)
Favorite.create!(restaurant: middle_eastern_rest3, user: stephane)

puts "Creating favorite restaurants for Stephane"
Favorite.create!(restaurant: middle_eastern_rest1, user: stephane)
Favorite.create!(restaurant: french_rest2, user: stephane)
Favorite.create!(restaurant: korean_rest5, user: stephane)
Favorite.create!(restaurant: greek_rest7, user: stephane)
Favorite.create!(restaurant: greek_rest5, user: stephane)
Favorite.create!(restaurant: korean_rest3, user: stephane)
Favorite.create!(restaurant: japan_rest5, user: stephane)
Favorite.create!(restaurant: french_rest2, user: stephane)
Favorite.create!(restaurant: japan_rest2, user: stephane)
Favorite.create!(restaurant: french_rest7, user: stephane)
Favorite.create!(restaurant: chinese_rest2, user: stephane)
Favorite.create!(restaurant: port_rest7, user: stephane)
Favorite.create!(restaurant: chinese_rest1, user: stephane)
Favorite.create!(restaurant: middle_eastern_rest3, user: stephane)

puts "Creating favorite restaurants for Lenoy"
Favorite.create!(restaurant: middle_eastern_rest1, user: lenoy)
Favorite.create!(restaurant: french_rest2, user: lenoy)
Favorite.create!(restaurant: korean_rest5, user: lenoy)
Favorite.create!(restaurant: french_rest7, user: lenoy)
Favorite.create!(restaurant: greek_rest5, user: lenoy)
Favorite.create!(restaurant: korean_rest3, user: lenoy)
Favorite.create!(restaurant: japan_rest5, user: lenoy)
Favorite.create!(restaurant: french_rest2, user: lenoy)
Favorite.create!(restaurant: japan_rest2, user: lenoy)
Favorite.create!(restaurant: french_rest5, user: lenoy)
Favorite.create!(restaurant: chinese_rest2, user: lenoy)
Favorite.create!(restaurant: port_rest7, user: lenoy)
Favorite.create!(restaurant: french_rest1, user: lenoy)
Favorite.create!(restaurant: middle_eastern_rest3, user: lenoy)

puts "Creating favorite restaurants for Cloe"
Favorite.create!(restaurant: middle_eastern_rest1, user: cloe)
Favorite.create!(restaurant: french_rest2, user: cloe)
Favorite.create!(restaurant: korean_rest5, user: cloe)
Favorite.create!(restaurant: french_rest7, user: cloe)
Favorite.create!(restaurant: greek_rest5, user: cloe)
Favorite.create!(restaurant: korean_rest3, user: cloe)
Favorite.create!(restaurant: japan_rest5, user: cloe)
Favorite.create!(restaurant: french_rest3, user: cloe)
Favorite.create!(restaurant: japan_rest2, user: cloe)
Favorite.create!(restaurant: greek_rest1, user: cloe)
Favorite.create!(restaurant: chinese_rest2, user: cloe)
Favorite.create!(restaurant: port_rest7, user: cloe)
Favorite.create!(restaurant: french_rest1, user: cloe)
Favorite.create!(restaurant: middle_eastern_rest3, user: cloe)

puts "Creating favorite restaurants for Marie-Gabrielle"
Favorite.create!(restaurant: middle_eastern_rest2, user: mg)
Favorite.create!(restaurant: french_rest2, user: mg)
Favorite.create!(restaurant: korean_rest1, user: mg)
Favorite.create!(restaurant: french_rest7, user: mg)
Favorite.create!(restaurant: greek_rest5, user: mg)
Favorite.create!(restaurant: korean_rest3, user: mg)
Favorite.create!(restaurant: japan_rest8, user: mg)
Favorite.create!(restaurant: french_rest2, user: mg)
Favorite.create!(restaurant: japan_rest1, user: mg)
Favorite.create!(restaurant: italian_rest8, user: mg)
Favorite.create!(restaurant: chinese_rest2, user: mg)
Favorite.create!(restaurant: port_rest7, user: mg)
Favorite.create!(restaurant: french_rest1, user: mg)
Favorite.create!(restaurant: middle_eastern_rest3, user: mg)

puts "Creating favorite restaurants for Martin"
Favorite.create!(restaurant: middle_eastern_rest1, user: martin)
Favorite.create!(restaurant: french_rest2, user: martin)
Favorite.create!(restaurant: korean_rest5, user: martin)
Favorite.create!(restaurant: french_rest7, user: martin)
Favorite.create!(restaurant: greek_rest5, user: martin)
Favorite.create!(restaurant: korean_rest3, user: martin)
Favorite.create!(restaurant: japan_rest5, user: martin)
Favorite.create!(restaurant: french_rest2, user: martin)
Favorite.create!(restaurant: japan_rest2, user: martin)
Favorite.create!(restaurant: italian_rest8, user: martin)
Favorite.create!(restaurant: chinese_rest2, user: martin)
Favorite.create!(restaurant: port_rest7, user: martin)
Favorite.create!(restaurant: french_rest1, user: martin)
Favorite.create!(restaurant: middle_eastern_rest3, user: martin)

puts "Creating favorite restaurants for Nicolas"
Favorite.create!(restaurant: middle_eastern_rest2, user: nicolas)
Favorite.create!(restaurant: greek_rest2, user: nicolas)
Favorite.create!(restaurant: korean_rest5, user: nicolas)
Favorite.create!(restaurant: chinese_rest7, user: nicolas)
Favorite.create!(restaurant: greek_rest5, user: nicolas)
Favorite.create!(restaurant: korean_rest3, user: nicolas)
Favorite.create!(restaurant: japan_rest1, user: nicolas)
Favorite.create!(restaurant: french_rest2, user: nicolas)
Favorite.create!(restaurant: japan_rest2, user: nicolas)
Favorite.create!(restaurant: port_rest8, user: nicolas)
Favorite.create!(restaurant: chinese_rest2, user: nicolas)
Favorite.create!(restaurant: port_rest7, user: nicolas)
Favorite.create!(restaurant: french_rest1, user: nicolas)
Favorite.create!(restaurant: middle_eastern_rest1, user: nicolas)

puts "Creating favorite restaurants for Richard"
Favorite.create!(restaurant: middle_eastern_rest2, user: richard)
Favorite.create!(restaurant: greek_rest2, user: richard)
Favorite.create!(restaurant: korean_rest5, user: richard)
Favorite.create!(restaurant: chinese_rest7, user: richard)
Favorite.create!(restaurant: greek_rest5, user: richard)
Favorite.create!(restaurant: korean_rest3, user: richard)
Favorite.create!(restaurant: mexican_rest1, user: richard)
Favorite.create!(restaurant: french_rest2, user: richard)
Favorite.create!(restaurant: japan_rest2, user: richard)
Favorite.create!(restaurant: port_rest8, user: richard)
Favorite.create!(restaurant: greek_rest2, user: richard)
Favorite.create!(restaurant: port_rest7, user: richard)
Favorite.create!(restaurant: korean_rest1, user: richard)
Favorite.create!(restaurant: greek_rest7, user: richard)

puts "creating follow"
Follow.create!(follower: nicolas, followed: junior)
Follow.create!(follower: martin, followed: junior)
Follow.create!(follower: richard, followed: junior)

puts"Creating messages"
Message.create!(user: nicolas, restaurant: japan_rest2, content: "junior is the best dev")
