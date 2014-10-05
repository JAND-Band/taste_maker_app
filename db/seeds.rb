Personality.delete_all
User.delete_all
Taste.delete_all

p1 = Personality.create(name:"EscapeArtist", tags: "Wanderlusting World Traveler", description: "place holder")
p2 = Personality.create(name:"Intelligentsia", tags: "Wicked Smart", description: "place holder")
p3 = Personality.create(name:"Realist", tags: "The Hoi Polloi (Salt of the Earth)", description: "place holder")
p4 = Personality.create(name:"Sartorialist", tags: "Style 24/7", description: "place holder")
p5 = Personality.create(name:"Techie", tags: "Full Stack Developer/Unemployed", description: "place holder")

u1 = User.create(name:"Anastasia Konecky", email: "anastasiakonecky@gmail.com", password: "password", password_confirmation: "password", personality_id: 1, role: "admin")
u2 = User.create(name:"Neil Sidhu", email: "neilsidhu@gmail.com", password: "password", password_confirmation: "password", personality_id: 2, role: "admin")
u3 = User.create(name:"Michael Hall", email: "deweybanks@gmail.com", password: "password", password_confirmation: "password", personality_id: 3, role: "admin")
u4 = User.create(name:"Jacki Williams", email: "freejacque@gmail.com", password: "password", password_confirmation: "password", personality_id: 4, role: "admin")
u5 = User.create(name:"Janine Harper", email: "janineharper@gmail.com", password: "password", password_confirmation: "password", personality_id: 5, role: "customer")

t1 = Taste.create(category: "Eat", personality_id: 1)
t2 = Taste.create(category: "Go", personality_id: 1)
t3 = Taste.create(category: "Listen", personality_id: 1)
t4 = Taste.create(category: "Read", personality_id: 1)
t5 = Taste.create(category: "Shop", personality_id: 1)
t6 = Taste.create(category: "Do", personality_id: 1)

t7 = Taste.create(category: "Eat", personality_id: 2)
t8 = Taste.create(category: "Go", personality_id: 2)
t9 = Taste.create(category: "Listen", personality_id: 2)
t10 = Taste.create(category: "Read", personality_id: 2)
t11 = Taste.create(category: "Shop", personality_id: 2)
t12 = Taste.create(category: "Do", personality_id: 2)

t13 = Taste.create(category: "Eat", personality_id: 3)
t14 = Taste.create(category: "Go", personality_id: 3)
t15 = Taste.create(category: "Listen", personality_id: 3)
t16 = Taste.create(category: "Read", personality_id: 3)
t17 = Taste.create(category: "Shop", personality_id: 3)
t18 = Taste.create(category: "Do", personality_id: 3)

t19 = Taste.create(category: "Eat", personality_id: 4)
t20 = Taste.create(category: "Go", personality_id: 4)
t21 = Taste.create(category: "Listen", personality_id: 4)
t22 = Taste.create(category: "Read", personality_id: 4)
t23 = Taste.create(category: "Shop", personality_id: 4)
t24 = Taste.create(category: "Do", personality_id: 4)

t25 = Taste.create(category: "Eat", personality_id: 5)
t26 = Taste.create(category: "Go", personality_id: 5)
t27 = Taste.create(category: "Listen", personality_id: 5)
t28 = Taste.create(category: "Read", personality_id: 5)
t29 = Taste.create(category: "Shop", personality_id: 5)
t30 = Taste.create(category: "Do", personality_id: 5)
