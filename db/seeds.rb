# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Hobby.destroy_all
Diet.destroy_all
UserDiet.destroy_all
UserHobby.destroy_all
City.destroy_all
Event.destroy_all
SubEvent.destroy_all

#******USERS********

p "Seeds for Users"

caroline = User.create!(
  first_name: "Caroline",
  last_name: "Des Jamonières",
  email: 'caroline@gmail.com',
  password: 'Secret123!',
  address: "8 rue d'Angoumois 44000 Nantes"
)

caroline_file = File.open(Rails.root.join("db/fixtures/clycrs.jpg"))
caroline.avatar.attach(io: caroline_file, filename: 'clycrs.jpg', content_type: 'image/jpg')

diane = User.create!(
  first_name: "Diane",
  last_name: "Hubau",
  email: 'diane@gmail.com',
  password: 'Secret123!',
  address: "11b avenue du haut Rillon 17340 Châtelaillon-Plage"
)

diane_file = File.open(Rails.root.join("db/fixtures/dianehb.jpg"))
diane.avatar.attach(io: diane_file, filename: 'dianehb.jpg', content_type: 'image/jpg')

roch = User.create!(
  first_name: "Roch",
  last_name: "Des Jamonières",
  email: 'roch@gmail.com',
  password: 'Secret123!',
  address: "11 rue Felibien 44000 Nantes"
)

roch_file = File.open(Rails.root.join("db/fixtures/roch.JPG"))
roch.avatar.attach(io: roch_file, filename: 'roch.JPG', content_type: 'image/jpg')

unknown = User.create!(
  first_name: "Unknown",
  last_name: "Unknown",
  email: 'unknown@gmail.com',
  password: 'Secret123!',
  address: "11 rue Felibien 44000 Nantes"
)

unknown_file = File.open(Rails.root.join("db/fixtures/unknown.jpg"))
unknown.avatar.attach(io: unknown_file, filename: 'unknown.jpg', content_type: 'image/jpg')

p "Seeds for Users done!"

#*****HOBBIES*****

p "Seeds Hobbies"

travel = Hobby.create!(
  name: travel,
  picto: '<i class="fas fa-plane-departure"></i>',
)

cooking = Hobby.create!(
  name: cooking,
  picto: '<i class="fas fa-cookie-bite"></i>'
)


music = Hobby.create!(
  name: music,
  picto: '<i class="fas fa-music"></i>',
)

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
  name: vegan,
  picto: '<i class="fas fa-leaf"></i>'
)

gluten_free = Diet.create!(
  name: gluten_free,
  picto: '<i class="fab fa-pagelines"></i>'
)

vegetarian = Diet.create!(
  name: vegetarian,
  picto: '<i class="fas fa-carrot"></i>'
)


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


nantes = City.create!(
  name: "Nantes",
  photo: "nantescity.png"
)

paris = City.create!(
  name: "Paris",
  photo: "paris.png"
)

lr = City.create!(
  name: "La Rochelle",
  photo: "larochelle.png"
)

p "Seeds for Cities done!"

#**********************EVENTS*******************

p "Seeds for Events"

e1 = Event.create!(
  date: Date.new(2021,6,10),
  theme: "Chic&Choc",
  city: nantes
)

e1_file = File.open(Rails.root.join("db/fixtures/C&C.png"))
e1.photo.attach(io: e1_file, filename: 'C&C.png', content_type: 'image/png')

SubEvent.create!(
  event: e1,
  name: "Apéro",
  hour: Time.new(2021,6,10,19,30),
  cooker: caroline
)

SubEvent.create!(
  event: e1,
  name: "Plat",
  hour: Time.new(2021,6,10,21,00),
  cooker: diane
)

SubEvent.create!(
  event: e1,
  name: "Dessert",
  hour: Time.new(2021,6,10,22,30),
  cooker: roch
)

e2 = Event.create!(
  date: Date.new(2021,9,10),
  theme: "Cow-Boys",
  city: nantes
)

e2_file = File.open(Rails.root.join("db/fixtures/cow-boys.jpg"))
e2.photo.attach(io: e2_file, filename: 'cow-boys.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e2,
  name: "Entrée",
  hour: Time.new(2021,9,10,19,30),
  cooker: unknown
)

SubEvent.create!(
  event: e2,
  name: "Plat",
  hour: Time.new(2021,9,10,21,00),
  cooker: unknown
)

SubEvent.create!(
  event: e2,
  name: "Dessert",
  hour: Time.new(2021,9,10,22,30),
  cooker: unknown
)

e3 = Event.create!(
  date: Date.new(2021,12,10),
  theme: "Entre terre & mer",
  city: nantes

)

e3_file = File.open(Rails.root.join("db/fixtures/tampon-terre-et-mer.jpg"))
e3.photo.attach(io: e3_file, filename: 'tampon-terre-et-mer.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e3,
  name: "Apéro",
  hour: Time.new(2021,12,10,19,30),
  cooker: unknown
)

SubEvent.create!(
  event: e3,
  name: "Plat",
  hour: Time.new(2021,12,10,21,00),
  cooker: unknown
)

SubEvent.create!(
  event: e3,
  name: "Dessert",
  hour: Time.new(2021,12,10,22,30),
  cooker: unknown
)

e4 = Event.create!(
  date: Date.new(2021,6,20),
  theme: "Antillais",
  city: paris

)

e4_file = File.open(Rails.root.join("db/fixtures/cuisine-antillaise.jpg"))
e4.photo.attach(io: e4_file, filename: 'cuisine-antillaise.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e4,
  name: "Entrée",
  hour: Time.new(2021,6,20,19,30),
  cooker: unknown
)

SubEvent.create!(
  event: e4,
  name: "Plat",
  hour: Time.new(2021,6,20,21,00),
  cooker: unknown
)

SubEvent.create!(
  event: e4,
  name: "Dessert",
  hour: Time.new(2021,6,20,22,30),
  cooker: unknown
)

e5 = Event.create!(
  date: Date.new(2021,9,20),
  theme: "Avengers",
  city: paris

)

e5_file = File.open(Rails.root.join("db/fixtures/avengers.jpg"))
e5.photo.attach(io: e5_file, filename: 'avengers.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e5,
  name: "Apéro",
  hour: Time.new(2021,9,20,19,30),
  cooker: unknown
)

SubEvent.create!(
  event: e5,
  name: "Plat",
  hour: Time.new(2021,9,20,21,00),
  cooker: unknown
)

SubEvent.create!(
  event: e5,
  name: "Dessert",
  hour: Time.new(2021,9,20,22,30),
  cooker: unknown
)

e6 = Event.create!(
  date: Date.new(2021,7,10),
  theme: "Bed&Boats",
  city: lr
)

e6_file = File.open(Rails.root.join("db/fixtures/bed&boat.png"))
e6.photo.attach(io: e6_file, filename: 'bed&boat.png', content_type: 'image/png')

SubEvent.create!(
  event: e6,
  name: "Entrée",
  hour: Time.new(2021,7,10,19,30),
  cooker: unknown
)

SubEvent.create!(
  event: e6,
  name: "Plat",
  hour: Time.new(2021,7,10,21,00),
  cooker: unknown
)

SubEvent.create!(
  event: e6,
  name: "Dessert",
  hour: Time.new(2021,7,10,22,30),
  cooker: unknown
)

e7 = Event.create!(
  date: Date.new(2021,10,10),
  theme: "US",
  city: lr
)

e7_file = File.open(Rails.root.join("db/fixtures/USA.jpg"))
e7.photo.attach(io: e7_file, filename: 'USA.jpg', content_type: 'image/jpg')

SubEvent.create!(
  event: e7,
  name: "Apéro",
  hour: Time.new(2021,10,10,19,30),
  cooker: unknown
)

SubEvent.create!(
  event: e7,
  name: "Plat",
  hour: Time.new(2021,10,10,21,00),
  cooker: unknown
)

SubEvent.create!(
  event: e7,
  name: "Dessert",
  hour: Time.new(2021,10,10,22,30),
  cooker: unknown
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
