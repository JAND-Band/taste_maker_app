Personality.delete_all
User.delete_all
Taste.delete_all

p1 = Personality.create(name:"sartorialist", descr: "style 24/7")
p2 = Personality.create(name:"realist", descr: "the hoi polloi")
p3 = Personality.create(name:"escape artist", descr: "wanderlusting world traveler")
p4 = Personality.create(name:"intelligentsia", descr: "wicked smart")
p5 = Personality.create(name:"techie", descr: "full stack developer/unemployed")


u1 = User.create(name:"Anastasia Konecky", email: "anastasiakonecky@gmail.com", personality_id: 1)
u2 = User.create(name:"Neil Sidhu", email: "neilsidhu@gmail.com", personality_id: 2)
u3 = User.create(name:"Michael Hall", email: "deweybanks@gmail.com", personality_id: 3)
u4 = User.create(name:"Jackie Williams", email: "freejacque@gmail.com", personality_id: 4)
u5 = User.create(name:"Janine Harper", email: "janineharper@gmail.com", personality_id: 5)

t1 = Taste.create(category:"eat", personality_id: 1)
t2 = Taste.create(category:"where", personality_id: 1)
t3 = Taste.create(category:"go", personality_id: 1)
t4 = Taste.create(category:"listen", personality_id: 1)
t5 = Taste.create(category:"read", personality_id: 1)
t6 = Taste.create(category:"shop", personality_id: 1)
t7 = Taste.create(category:"do", personality_id: 1)

t8 = Taste.create(category:"eat", personality_id: 2)
t9 = Taste.create(category:"where", personality_id: 2)
t10 = Taste.create(category:"go", personality_id: 2)
t11 = Taste.create(category:"listen", personality_id: 2)
t12 = Taste.create(category:"read", personality_id: 2)
t13 = Taste.create(category:"shop", personality_id: 2)
t14 = Taste.create(category:"do", personality_id: 2)

t15 = Taste.create(category:"eat", personality_id: 3)
t16 = Taste.create(category:"where", personality_id: 3)
t17 = Taste.create(category:"go", personality_id: 3)
t18 = Taste.create(category:"listen", personality_id: 3)
t19 = Taste.create(category:"read", personality_id: 3)
t20 = Taste.create(category:"shop", personality_id: 3)
t21 = Taste.create(category:"do", personality_id: 3)

t22 = Taste.create(category:"eat", personality_id: 4)
t23 = Taste.create(category:"where", personality_id: 4)
t24 = Taste.create(category:"go", personality_id: 4)
t25 = Taste.create(category:"listen", personality_id: 4)
t26 = Taste.create(category:"read", personality_id: 4)
t27 = Taste.create(category:"shop", personality_id: 4)
t28 = Taste.create(category:"do", personality_id: 4)

t29 = Taste.create(category:"eat", personality_id: 5)
t30 = Taste.create(category:"where", personality_id: 5)
t31 = Taste.create(category:"go", personality_id: 5)
t32 = Taste.create(category:"listen", personality_id: 5)
t33 = Taste.create(category:"read", personality_id: 5)
t34 = Taste.create(category:"shop", personality_id: 5)
t35 = Taste.create(category:"do", personality_id: 5)
