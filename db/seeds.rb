# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
m1 = mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
m2 = spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)
m3 = dale_earnhardt_doc = Movie.create(title: "Dale Earnhardt Documenatry", box_office_earnings: 50_000_000)

puts "Creating actors..."
a1 = lindsay_lohan = Actor.create(name: "Lindsay Lohan")
a2 = tina_fey = Actor.create(name: "Tina Fey")
a3 = baby_spice = Actor.create(name: "Emma Bunton")
a4 = ginger_spice = Actor.create(name: "Geri Halliwell")
a5 = scary_spice = Actor.create(name: "Melanie Brown")
a6 = sporty_spice = Actor.create(name: "Melanie Chisholm")
a7 = posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
Role.create(salary: 48000, character_name:"Terry", movie_id: m1.id, actor_id:a1.id )
 Role.create(salary: 18000, character_name:"Edna", movie_id: m2.id, actor_id:a2.id )
 Role.create(salary: 20000, character_name:"Sabrina", movie_id: m2.id, actor_id:a3.id )
 Role.create(salary: 40000, character_name:"Landen", movie_id: m1.id, actor_id:a4.id )
 Role.create(salary: 16000, character_name:"Kade", movie_id: m3.id, actor_id: a5.id )
 Role.create(salary: 32000, character_name:"Jayze", movie_id: m2.id, actor_id: a6.id )
 Role.create(salary: 9000, character_name:"Kali", movie_id: m1.id, actor_id: a7.id )

puts "Seeding done!"