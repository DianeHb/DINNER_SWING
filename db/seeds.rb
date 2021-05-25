# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#******USERS********

p "Seeds for Users"

caroline = User.create!(
  first_name: "Caroline",
  last_name: "Des Jamonières",
  avatar_url: "https://kitt.lewagon.com/placeholder/users/clycrs",
  email: 'caroline@gmail.com',
  password: 'Secret123!',
  address: "8 rue d'Angoumois 44000 Nantes"
)

diane = User.create!(
  first_name: "Diane",
  last_name: "Hubau",
  avatar_url: "https://kitt.lewagon.com/placeholder/users/dianehb",
  email: 'diane@gmail.com',
  password: 'Secret123!',
  address: "11b avenue du haut Rillon 17340 Châtelaillon-Plage"
)

roch = User.create!(
  first_name: "Roch",
  last_name: "Des Jamonières",
  avatar_url: "https://kitt.lewagon.com/placeholder/users/clycrs",
  email: 'roch@gmail.com',
  password: 'Secret123!',
  address: "11 rue Felibien 44000 Nantes"
)

p "Seeds for Users done!"

#*****HOBBIES*****

p "Seeds Hobbies"

travel = Hobby.create!(
  name: travel
)

file_travel = File.open(Rails.root.join("db/fixtures/nantescity.png"))
travel.photo.attach(io: file_travel, filename: 'paris.png', content_type: 'image/png')

cooking = Hobby.create!(
  name: cooking
)

file_cooking = File.open(Rails.root.join("db/fixtures/nantescity.png"))
cooking.photo.attach(io: file_cooking, filename: 'paris.png', content_type: 'image/png')

music = Hobby.create!(
  name: music
)

file_music = File.open(Rails.root.join("db/fixtures/nantescity.png"))
music.photo.attach(io: file_music, filename: 'paris.png', content_type: 'image/png')


UserHobby.create!(
  user: caroline,
  hobby: travel
)

UserHobby.create!(
  user: diane,
  hobby: cooking
)

UserHobby.create!(
  user: roch,
  hobby: music
)

p "Seeds Hobbies done"

#*****DIETS******

p "Seeds Diets"

vegan = Diet.create!(
  name: vegan
)

file_vegan = File.open(Rails.root.join("db/fixtures/nantescity.png"))
vegan.photo.attach(io: file_vegan, filename: 'paris.png', content_type: 'image/png')

gluten_free = Diet.create!(
  name: gluten_free
)

file_gluten_free = File.open(Rails.root.join("db/fixtures/nantescity.png"))
gluten_free.photo.attach(io: file_gluten_free, filename: 'paris.png', content_type: 'image/png')

vegetarian = Diet.create!(
  name: vegetarian
)

file_vegetarian = File.open(Rails.root.join("db/fixtures/nantescity.png"))
vegetarian.photo.attach(io: file_vegetarian, filename: 'paris.png', content_type: 'image/png')

UserDiet.create!(
  user: caroline,
  diet: gluten_free
)

UserDiet.create!(
  user: diane,
  diet: vegan
)

UserDiet.create!(
  user: roch,
  diet: vegetarian
)


p "Seeds Diets done"

#**********************CITIES*******************

p "Seeds for Cities"

file_nantes = File.open(Rails.root.join("db/fixtures/nantescity.png"))

nantes = City.create!(
  name: "Nantes"
)

nantes.photo.attach(io: file_nantes, filename: 'nantescity.png', content_type: 'image/png')

file_paris = File.open(Rails.root.join("db/fixtures/paris.png"))

paris = City.create!(
  name: "Paris"
)

paris.photo.attach(io: file_paris, filename: 'paris.png', content_type: 'image/png')

file_lr = File.open(Rails.root.join("db/fixtures/larochelle.png"))

lr = City.create!(
  name: "La Rochelle"
)

lr.photo.attach(io: file_lr, filename: 'larochelle.png', content_type: 'image/png')


p "Seeds for Cities done!"

#**********************EVENTS*******************

p "Seeds for Events"

e1 = Event.create!(
  date: Date.today + 6,
  theme: "Chic&Choc"
  city: nantes
)

e1_file = File.open(Rails.root.join("db/fixtures/lhermione.jpg"))
e1.photo.attach(io: e1_file, filename: 'lhermione.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e1,
  name: "Apéro",
  hour: Time.now,
  cooker: caroline
)

SubEvent.create!(
  event: e1,
  name: "Plat",
  hour: Time.now,
  cooker: diane
)

SubEvent.create!(
  event: e1,
  name: "Dessert",
  hour: Time.now
  cooker: roch
)

e2 = Event.create!(
  date: Date.today + 40
  theme: "Cow-Boys"
  city: nantes
)

e2_file = File.open(Rails.root.join("db/fixtures/lhermione.jpg"))
e2.photo.attach(io: e2_file, filename: 'lhermione.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e2,
  name: "Entrée",
  hour: Time.now
)

SubEvent.create!(
  event: e2,
  name: "Plat",
  hour: Time.now
)

SubEvent.create!(
  event: e2,
  name: "Dessert",
  hour: Time.now
)

e3 = Event.create!(
  date: Date.today + 60
  theme: "Entre terre & mer"
  city: nantes

)

e3_file = File.open(Rails.root.join("db/fixtures/lhermione.jpg"))
e3.photo.attach(io: e3_file, filename: 'lhermione.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e3,
  name: "Apéro",
  hour: Time.now
)

SubEvent.create!(
  event: e3,
  name: "Plat",
  hour: Time.now
)

SubEvent.create!(
  event: e3,
  name: "Dessert",
  hour: Time.now
)

e4 = Event.create!(
  date: Date.today + 4
  theme: "Antillais"
  city: paris

)

e4_file = File.open(Rails.root.join("db/fixtures/lhermione.jpg"))
e4.photo.attach(io: e4_file, filename: 'lhermione.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e4,
  name: "Entrée",
  hour: Time.now
)

SubEvent.create!(
  event: e4,
  name: "Plat",
  hour: Time.now
)

SubEvent.create!(
  event: e4,
  name: "Dessert",
  hour: Time.now
)

e5 = Event.create!(
  date: Date.today + 36
  theme: "Avengers"
  city: paris

)

e5_file = File.open(Rails.root.join("db/fixtures/lhermione.jpg"))
e5.photo.attach(io: e5_file, filename: 'lhermione.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e5,
  name: "Apéro",
  hour: Time.now
)

SubEvent.create!(
  event: e5,
  name: "Plat",
  hour: Time.now
)

SubEvent.create!(
  event: e5,
  name: "Dessert",
  hour: Time.now
)

e6 = Event.create!(
  date: Date.today + 12
  theme: "Bed&Boats"
  city: lr

)

e6_file = File.open(Rails.root.join("db/fixtures/lhermione.jpg"))
e6.photo.attach(io: e6_file, filename: 'lhermione.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e6,
  name: "Entrée",
  hour: Time.now
)

SubEvent.create!(
  event: e6,
  name: "Plat",
  hour: Time.now
)

SubEvent.create!(
  event: e6,
  name: "Dessert",
  hour: Time.now
)

e7 = Event.create!(
  date: Date.today + 50
  theme: "US"
  city: lr

)

e7_file = File.open(Rails.root.join("db/fixtures/lhermione.jpg"))
e7.photo.attach(io: e7_file, filename: 'lhermione.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e7,
  name: "Apéro",
  hour: Time.now
)

SubEvent.create!(
  event: e7,
  name: "Plat",
  hour: Time.now
)

SubEvent.create!(
  event: e7,
  name: "Dessert",
  hour: Time.now
)

p "Seeds for Events done!"

#****************PARTICIPANTS*************

p "Seeds for participants"

Participant.create!(
  user: caroline,
  event: e1,
  guests: 3
)

Participant.create!(
  user: diane,
  event: e1,
  guests: 1
)

Participant.create!(
  user: roch,
  event: e1,
  guests: 3
)

Participant.create!(
  user: caroline,
  event: e3,
  guests: 3
)

Participant.create!(
  user: diane,
  event: e3,
  guests: 1
)

Participant.create!(
  user: roch,
  event: e3,
  guests: 3
)

p "Seeds for participants done!"
