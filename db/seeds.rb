# Personality.delete_all
# User.delete_all
# Taste.delete_all

p1 = Personality.create(name:"EscapeArtist", tags: "Born To Run", description: "No one does travel and exploration quite like you. You are Kerouac, on the road, taking in all the sound and fury of earth's remotest places and most interesting cultures. You give tips to Bourdain and run with the bulls in Spain. Your Instagram account has tons of followers, almost as many as your passport has stamps. What’s next? To Infinity and Beyond!")
p2 = Personality.create(name:"Intelligentsia", tags: "Wicked Smart", description: "Your thirst for knowledge knows no bounds.  Whatever your interest or area of expertise, you own it with an intellectual capacity that is unparalleled. Whether exploring new theories or designing a better mousetrap, you can still be depended upon for scintillating conversation.  In fact, that time you had a stomach virus and couldn’t attend the salon on the works of Marcel Proust, they just cancelled it.  That’s right, you’ve got that upcoming MacArthur Genius grant in the bag.")
p3 = Personality.create(name:"Realist", tags: "All Hail the Hoi Palloi", description: "You are all about keeping it real.  Down to earth, quality and comfort are your thing.  Whether you’re talking about home cooking or live music, you know what you like and don’t feel the need to veer too far off of your path.  You don’t need the latest trends to know what’s cool.  Keep on truckin’.")
p4 = Personality.create(name:"Sartorialist", tags: "Style 24/7", description: "You have a personal style that appears effortless.  Only you know what it takes to cultivate that kind of flair.  You can often be found at the latest gallery opening, secret restaurant or new rooftop bar.  You may have been style snapped for a street style fashion blog or two, but no big deal.  That kind of thing is to be expected when you’re that flawless.  Shine on, you crazy diamond.")
p5 = Personality.create(name:"Techie", tags: "Full Stack Developer/Unemployed", description: "You are having your moment.  All of those years of Dungeons and Dragons, Larp and Mine Craft have paid off.  In this brave new world, your skills and ability are desired like never before.  Suddenly, you are setting the trends.  When you aren’t spending your weekend hacking, you can be found curled up with a log of sweet, sweet error messages. High Fives all around!")

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
