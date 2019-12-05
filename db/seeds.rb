puts "Destroying all records of users, books and groups..."

Comment.destroy_all
Membership.destroy_all
Group.destroy_all
Book.destroy_all
User.destroy_all
Language.destroy_all

puts "Destroyed all records of users, books and groups!"

###########
# Language seed
###########
language0 = Language.create({name: "English"})
language1 = Language.create({name: "German"})

puts "Languages seeded!"

###########
# User/host seed
###########

names = ["Andy", "Lala", "Kevin", "Jay", "May", "Des", "Roy"]
tags = ['Biography', 'Fantasy', 'Fairy Tale', 'Fiction', 'Historical Fiction', 'Horror', 'NonFicton', 'Novel', 'Science Fiction', 'Short Stories', 'Thriller', 'Travelling']

host1 = User.create({
  name: "Andy",
  password: '123456',
  email: 'andy@smile.com',
  bio: 'Every time you read a book, you have to remember the setting of the book, the characters, their backgrounds, their history, their personalities, the sub-plots and so much more. As your brain learns to remember all this, your memory becomes better. What’s more, with every new memory you create, you create new pathways and this strengthens the existing ones.',
  photo: "https://avatars3.githubusercontent.com/u/12513436?v=4"
})

host2 = User.create({
  name: "Lala",
  password: '123456',
  email: 'lala@smile.com',
  bio: 'One of the biggest reasons why I read books is to gain knowledge. Books are a rich source of information. Reading books on varied subjects imparts information and increases the depth about the subject as well. Whenever you read a book, you learn a new information that otherwise would not have known.',
  photo: 'https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80'
})

host3 = User.create({
  name: "Kevin",
  password: '123456',
  email: 'kevin@smile.com',
  bio: 'Reading has a positive effect on the body as well. Reading a book can relieve stress better than taking a walk or listening to music. According to studies who read more tend to have lower stress levels.',
  photo: "https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
})

host4 = User.create({
  name: "Jay",
  password: '123456',
  email: 'jay@smile.com',
  bio: 'I love to read. I wish I could advise more people to
read. There’s a whole new world in books. If you
can’t afford to travel, you travel mentally through
reading. You can see anything and go any place
you want to in reading.',
  photo: "https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
})

host5 = User.create({
  name: "May",
  password: '123456',
  email: 'may@smile.com',
  bio: 'Reading improves your vocabulary and command on the language. As you read, you come across new words, idioms, new words, phrases and writing styles.',
  photo: "https://images.unsplash.com/photo-1493106819501-66d381c466f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
})

host6 = User.create({
  name: "Des",
  password: '123456',
  email: 'des@smile.com',
  bio: 'Improving your vocabulary and writing skills goes hand in hand with developing your communication skills. The more you read and write, the better you communicate. Increasing your ability to communicate, improves your relationships and even makes you a better employee or student.',
  photo: "https://images.unsplash.com/photo-1519345182560-3f2917c472ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
})

host7 = User.create({
  name: "Roy",
  password: '123456',
  email: 'roy@smile.com',
  bio: 'The biggest difference between reading and watching television is that reading gives you the scope to unleash your creativity. The more you read, the more you learn new things. New thoughts always stretch our minds to rediscover life in new and better ways. We start to see the world in a different way and this way we find new creative solutions.',
  photo: "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
})

host8 = User.create({
  name: "Clair",
  password: '123456',
  email: 'clair@smile.com',
  bio: 'Did you know that when you read books, you’re also exercising your brain? The more you read, the more you stimulate your mind. Mental stimulation keeps the blood flowing to our brains, preventing diseases like dementia and Alzheimer’s. When we read, our cognitive function and memory improve. The healthier your brain is, the more you are able to focus and develop your analytical skills.',
  photo: "https://unsplash.com/photos/HRZUzoX1e6w"
})

puts "Users seeded!"

###########
# Book seed
###########

book = Book.create({
  title: "The Amulet of Smarkand",
  author: 'Jonathan Stroud',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley, written in 1931 and published in 1932. Largely set in a futuristic World State, inhabited by genetically modified citizens and an intelligence-based social hierarchy, the novel anticipates huge scientific advancements in reproductive technology, sleep-learning, psychological manipulation and classical ... ",
  photo: "bookcover.jpg"
})

book1 = Book.create({
  title: "The Alchemist",
  author: 'Paulo Coelho',
  description: "The Alchemist by Paulo Coelho continues to change the lives of its readers forever. With more than two million copies sold around the world, The Alchemist has established itself as a modern classic, universally admired.",
  photo: "bookcover1.jpg"
})

book2 = Book.create({
  title: "On the Road",
  author: 'Jack Kerouac',
  description: "When Jack Kerouac’s On the Road first appeared in 1957, readers instantly felt the beat of a new literary rhythm. A fictionalised account of his own journeys across America with his friend Neal Cassady, Kerouac’s beatnik odyssey captured the soul of a generation and changed the landscape of American fiction for ever.",
  photo: "bookcover2.jpg"
})

book3 = Book.create({
  title: "Tom McCarthy",
  author: 'Satin Island',
  description: "From the author of Remainder (the major feature-film adaption of which will be released in 2015) and C (short-listed for the Booker Prize), and winner of the Windham Campbell Prize, a novel that promises to give us the first and last word on the world--modern, postmodern, whatever world you think you are living in.",
  photo: "bookcover3.jpg"
})

book4 = Book.create({
  title: "The Farm",
  author: 'Tom Rob Smith',
  description: "Until the moment he received a frantic call from his father, Daniel believed his parents were headed into a peaceful, well-deserved retirement. They had sold their home and business in London, and said 'farewell to England' with a cheerful party where all their friends had gathered to wish them well on their great adventure: setting off to begin life anew on a remote, bucolic farm in rural Sweden.",
  photo: "bookcover4.jpg"
})

book5 = Book.create({
  title: "The Little Prince",
  author: 'Antoine de Saint-Exupéry',
  description: "Moral allegory and spiritual autobiography, The Little Prince is the most translated book in the French language. With a timeless charm it tells the story of a little boy who leaves the safety of his own tiny planet to travel the universe, learning the vagaries of adult behaviour through a series of extraordinary encounters. His personal odyssey culminates in a voyage to Earth and further adventures. ",
  photo: "bookcover5.jpg"
})

book6 = Book.create({
  title: "Thinking, Fast and Slow",
  author: 'Daniel Kahneman',
  description: "In the highly anticipated Thinking, Fast and Slow, Kahneman takes us on a groundbreaking tour of the mind and explains the two systems that drive the way we think. System 1 is fast, intuitive, and emotional; System 2 is slower, more deliberative, and more logical. Kahneman exposes the extraordinary capabilities—and also the faults and biases—of fast thinking, and reveals the pervasive influence of intuitive impressions on our thoughts and behavior.",
  photo: "bookcover6.jpg"
})


book7 = Book.create({
  title: "Becoming",
  author: "Michelle Obama",
  description: 'In a life filled with meaning and accomplishment, Michelle Obama has emerged as one of the most iconic and compelling women of our era. As First Lady of the United States of America—the first African American to serve in that role—she helped create the most welcoming and inclusive White House in history, while also establishing herself as a powerful advocate for women and girls in the U.S. and around the world, dramatically changing the ways that families pursue healthier and more active lives, and standing with her husband as he led America through some of its most harrowing moments. Along the way, she showed us a few dance moves, crushed Carpool Karaoke, and raised two down-to-earth daughters under an unforgiving media glare.',
  photo: "MicheleObama_Becoming.jpg"
})


book8 = Book.create({
  title: "The Tattooist of Auschwitz ",
  author: "Heather Morris",
  description: "In April 1942, Lale Sokolov, a Slovakian Jew, is forcibly transported to the concentration camps at Auschwitz-Birkenau. When his captors discover that he speaks several languages, he is put to work as a Tätowierer (the German word for tattooist), tasked with permanently marking his fellow prisoners.

Imprisoned for more than two and a half years, Lale witnesses horrific atrocities and barbarism—but also incredible acts of bravery and compassion. Risking his own life, he uses his privileged position to exchange jewels and money from murdered Jews for food to keep his fellow prisoners alive.",
  photo: "Auschwitz.jpg"
})


book9 = Book.create({
  title: "The Circle",
  author: "Dave Eggers",
  description: "When Mae Holland is hired to work for the Circle, the world's most powerful internet company, she feels she's been given the opportunity of a lifetime. The Circle, run out of a sprawling California campus, links users' personal emails, social media, banking, and purchasing with their universal operating system, resulting in one online identity and a new age of civility and transparency. As Mae tours the open-plan office spaces, the towering glass dining facilities, the cozy dorms for those who spend nights at work, she is thrilled with the company's modernity and activity.",
  photo: "TheCircle.jpg"
})


book10 = Book.create({
  title: "Extremely Loud and Incredibly Close",
  author: "Jonathan Safran Foer",
  description: "Nine-year-old Oskar Schell is an inventor, amateur entomologist, Francophile, letter writer, pacifist, natural historian, percussionist, romantic, Great Explorer, jeweller, detective, vegan, and collector of butterflies. When his father is killed in the September 11th attacks on the World Trade Centre, Oskar sets out to solve the mystery of a key he discovers in his father's closet. It is a search which leads him into the lives of strangers, through the five boroughs of New York, into history, to the bombings of Dresden and Hiroshima, and on an inward journey which brings him ever closer to some kind of peace.",
  photo: "Foer.jpg"
})


book11 = Book.create({
  title: "The Kite Runner",
  author: "Khaled Hosseini",
  description: "Amir is the son of a wealthy Kabul merchant, a member of the ruling caste of Pashtuns. Hassan, his servant and constant companion, is a Hazara, a despised and impoverished caste. Their uncommon bond is torn by Amir's choice to abandon his friend amidst the increasing ethnic, religious, and political tensions of the dying years of the Afghan monarchy, wrenching them far apart. But so strong is the bond between the two boys that Amir journeys back to a distant world, to try to right past wrongs against the only true friend he ever had.",
  photo: "KiteRunner.jpg"
})


book12 = Book.create({
  title: "Life of Pi",
  author: "Yann Martel",
  description: "Life of Pi is a fantasy adventure novel by Yann Martel published in 2001. The protagonist, Piscine Molitor 'Pi' Patel, a Tamil boy from Pondicherry, explores issues of spirituality and practicality from an early age. He survives 227 days after a shipwreck while stranded on a boat in the Pacific Ocean with a Bengal tiger named Richard Parker.",
  photo: "LifeOfPi.jpg"
})

book13 = Book.create({
  title: "The Picture of Dorian Gray",
  author: "Oscar Wilde",
  description: "The Picture of Dorian Gray is about a young man named Dorian Gray who has a portrait painted of himself. The artist, Basil Hallward, thinks Dorian Gray is very beautiful, and becomes obsessed with Dorian. One day in Basil's garden, Dorian Gray meets a man named Lord Henry Wotton. Lord Henry Wotton makes Dorian Gray believe that the only thing important in life is beauty. However, Dorian realizes that he will become less beautiful as he grows older. He wishes the portrait Basil painted would become old in his place. Dorian then sells his soul so he can be beautiful forever, but not on purpose.",
  photo: "OscarWilde.jpg"
})

book14 = Book.create({
  title: "The Handmaid's Tale",
  author: "Margret Atwood",
  description: "Offred is a Handmaid in the Republic of Gilead. She may leave the home of the Commander and his wife once a day to walk to food markets whose signs are now pictures instead of words because women are no longer allowed to read. She must lie on her back once a month and pray that the Commander makes her pregnant, because in an age of declining births, Offred and the other Handmaids are only valued if their ovaries are viable.",
  photo: "HandmaideTale.jpg"
})

book15 = Book.create({
  title: "One Hundred Years of Solitude",
  author: "Gabriel Garcia Marquez",
  description: "The brilliant, bestselling, landmark novel that tells the story of the Buendia family, and chronicles the irreconcilable conflict between the desire for solitude and the need for love—in rich, imaginative prose that has come to define an entire genre known as 'magical realism.'",
  photo: "Solitude.jpg"
})

book16 = Book.create({
  title: "No Logo",
  author: "Naomi Klein",
  description: "With a new Afterword to the 2002 edition, No Logo employs journalistic savvy and personal testament to detail the insidious practices and far-reaching effects of corporate marketing—and the powerful potential of a growing activist sect that will surely alter the course of the 21st century. First published before the World Trade Organization protests in Seattle, this is an infuriating, inspiring, and altogether pioneering work of cultural criticism that investigates money, marketing, and the anti-corporate movement.",
  photo: "NoLogo.jpg"
})

book17 = Book.create({
  title: "Spark Joy",
  author: " Marie Kondō",
  description: "Spark Joy is an in-depth, line illustrated, room-by-room guide to decluttering and organising your home. It covers every room in the house from bedrooms and kitchens to bathrooms and living rooms as well as a wide range of items in different categories, including clothes, photographs, paperwork, books, cutlery, cosmetics, shoes, bags, wallets and valuables. Charming line drawings explain how to properly organise drawers, wardrobes, cupboards and cabinets. The illustrations also show Ms Kondo's unique folding method, clearly showing how to fold anything from shirts, trousers and jackets to skirts, socks and bras.",
  photo: "SparkJoy.jpg"
})

book18 = Book.create({
  title: "Long Walk to Freedom",
  author: "Nelson Mandela",
  description: "Nelson Mandela is one of the great moral and political leaders of our time: an international hero whose lifelong dedication to the fight against racial oppression in South Africa won him the Nobel Peace Prize and the presidency of his country.

Since his triumphant release in 1990 from more than a quarter-century of imprisonment, Mandela has been at the center of the most compelling and inspiring political drama in the world. As president of the African National Congress and head of South Africa's anti-apartheid movement, he was instrumental in moving the nation toward multiracial government and majority rule. He is revered everywhere as a vital force in the fight for human rights and racial equality.",
  photo: "Mandela.jpg"
})

book19 = Book.create({
  title: "I Am Malala",
  author: "Malala Yousafzai",
  description: "When the Taliban took control of the Swat Valley in Pakistan, one girl spoke out. Malala Yousafzai refused to be silenced and fought for her right to an education.

On Tuesday, October 9, 2012, when she was fifteen, she almost paid the ultimate price. She was shot in the head at point-blank range while riding the bus home from school, and few expected her to survive.",
  photo: "Malala.jpg"
})

book20 = Book.create({
  title: "1Q84",
  author: "Haruki Murakami",
  description: "A young woman named Aomame follows a taxi driver’s enigmatic suggestion and begins to notice puzzling discrepancies in the world around her. She has entered, she realizes, a parallel existence, which she calls 1Q84 —“Q is for ‘question mark.’ A world that bears a question.” Meanwhile, an aspiring writer named Tengo takes on a suspect ghostwriting project. He becomes so wrapped up with the work and its unusual author that, soon, his previously placid life begins to come unraveled.",
  photo: "1Q84.jpg"
})

book21 = Book.create({
  title: "Americanah",
  author: "Chimamanda Ngozi Adichie",
  description: "Ifemelu and Obinze are young and in love when they depart military-ruled Nigeria for the West. Beautiful, self-assured Ifemelu heads for America, where despite her academic success, she is forced to grapple with what it means to be black for the first time. Quiet, thoughtful Obinze had hoped to join her, but with post-9/11 America closed to him, he instead plunges into a dangerous, undocumented life in London. Fifteen years later, they reunite in a newly democratic Nigeria, and reignite their passion—for each other and for their homeland.",
  photo: "Americanah.jpg"
})

puts "Books seeded!"


###########
# group seed
###########

group1 = Group.new({
  name: "Clever Witches",
  location_name: "Ankerklause",
  location: "Kottbusser Damm 104 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Fri, Jan 21 2020, 08:00 pm',
  max_members: 10
})
group1.user_id = host1.id
group1.book = book
group1.language = language0
group1.tag_list.add("Fantasy", "Fairy Tale", "Fiction")
group1.save

group2 = Group.new({
  name: "Find The Real You",
  location_name: "Bonanza",
  location: "Adalbertstraße 70 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Sun, Dec 24 2019, 11:00 am',
  max_members: 15
})
group2.user_id = host1.id
group2.book = book1
group2.language = language0
group2.tag_list.add("Novel", "Short Stories")
group2.save

group3 = Group.new({
  name: "Be Real Adventurer",
  location_name: "Arabica",
  location: "Reichenberger Str. 36 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Sat, Dec 14 2019, 06:00 pm',
  max_members: 7
})
group3.user_id = host2.id
group3.book = book2
group3.language = language0
group3.tag_list.add("Travelling", "Thriller")
group3.save

group4 = Group.new({
  name: "Who is U",
  location_name: "Cuccuma",
  location: "Zossener Str. 34 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Fri, Dec 16 2019, 09:00 am',
  max_members: 9
})
group4.user_id = host4.id
group4.book = book3
group4.language = language0
group4.tag_list.add("NonFicton", "Biography")
group4.save

group5 = Group.new({
  name: "Out of My Mind",
  location_name: "Buenavista Café",
  location: "Lima",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Wed, Dec 22 2019, 01:00 pm',
  max_members: 12
})
group5.user_id = host4.id
group5.book = book4
group5.language = language0
group5.tag_list.add("Fantasy", "Novel", "Short Stories")
group5.save

group6 = Group.new({
  name: "We are The Children",
  location_name: "Two and Two",
  location: "Pannierstraße 6, Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Wed, Dec 14 2019, 06:00 pm',
  max_members: 10
})
group6.user_id = host5.id
group6.book = book14
group6.language = language1
group6.tag_list.add("Historical Fiction", "Short Stories", "Novel")
group6.save

group7 = Group.new({
  name: "Better Way of Thinking",
  location_name: "DADA Café",
  location: "Moscow",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Dec 31 2019, 11:00 am',
  max_members: 8
})
group7.user_id = host6.id
group7.book = book19
group7.language = language0
group7.tag_list.add("NonFicton")
group7.save

group8 = Group.new({
  name: "We love Michelle",
  location_name: "Café Kotti",
  location: "Adalbertstraße 96B, 10999 Berlin",
  host_message: 'I am admiring Michelle Obama since her first apperance as First Lady. She does admiring work. Lets finally read her book. It will be so inspiring.',
  date: 'Mon, Jan 20 2020, 07:00 pm',
  max_members: 6
})
group8.user_id = host1.id
group8.book = book7
group8.language = language0
group8.tag_list.add("Biography", "NonFicton")
group8.save

group9 = Group.new({
  name: "Princesses and Princes",
  location_name: "Café Westberlin",
  location: "Friedrichstraße 215, 10969 Berlin",
  host_message: 'At the first glance, from its packaging, tone, and treatment, The Little Prince may come across as a children’s book, and very often it’s also sold like one. However, this book is certainly also for adults. More than children, adults need to be reminded of the homilies and the simple truths about what counts and what doesn’t count in life. Children in any case are born with this wisdom.',
  date: 'Fri, Jan 6 2020, 05:00 pm',
  max_members: 10
})
group9.user_id = host4.id
group9.book = book5
group9.language = language1
group9.tag_list.add("Fantasy", "Fiction", "Short Stories", "Novel")
group9.save

group10 = Group.new({
  name: "The Thinkers",
  location_name: "Café Tresor",
  location: "Köpenicker Str. 70, 10179 Berlin",
  host_message: 'Kahneman compiles a broad survey of research & literature addressing the gaps between how we think and how we think we think, instinctive autonomous response vs rationalization. A continous "aha experience" for me. I am excited to read it again with you guys!',
  date: 'Sat, Dec 10 2019, 07:00 pm',
  max_members: 8
})
group10.user_id = host2.id
group10.book = book6
group10.language = language0
group10.tag_list.add("NonFiction", "Novel")
group10.save

group11 = Group.new({
  name: "Historians",
  location_name: "Milchhalle",
  location: "Auguststraße 50, 10119 Berlin",
  host_message: 'Very soon, there will be no remaining Holocaust survivors. There will be no further firsthand accounts of what it was like to be imprisoned in the camps. Let us remember this time and discuss about it together.',
  date: 'Tue, Jan 28 2020, 05:00 pm',
  max_members: 5
})
group11.user_id = host5.id
group11.book = book8
group11.language = language1
group11.tag_list.add("Historical Fiction", "Thriller", "Novel")
group11.save

group12 = Group.new({
  name: "Classic Literature is our thing",
  location_name: "Café Lebensart",
  location: "Unter den Linden 69A, 10117 Berlin",
  host_message: 'This is a towering piece of literature. Beautifully written and filled with memorable characters and a deeply moving story. A novel deserving of its status as a classic of English Literature. I would love to read it again and discuss about it with you.',
  date: 'Thu, Jan 02 2020, 02:00 pm',
  max_members: 9
})
group12.user_id = host7.id
group12.book = book13
group12.language = language1
group12.tag_list.add("Novel", "Thriller")
group12.save

group13 = Group.new({
  name: "Oscar Wilde Fans",
  location_name: "Berliner Kaffeerösterei",
  location: "Uhlandstraße 173/174, 10719 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock.',
  date: 'Mon, Dec 31 2019, 03:00 pm',
  max_members: 12
})
group13.user_id = host1.id
group13.book = book15
group13.language = language1
group13.tag_list.add("NonFicton")
group13.save

group14 = Group.new({
  name: "Freedom-Lovers",
  location_name: "Bonnevie Berlin",
  location: "Propststraße 1, 10178 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock.',
  date: 'Sun, Dec 27 2019, 01:00 pm',
  max_members: 9
})
group14.user_id = host6.id
group14.book = book18
group14.language = language1
group14.tag_list.add("Biography", "Novel", "Fiction")
group14.save

group15 = Group.new({
  name: "Enlightenment",
  location_name: "BEN RAHIM",
  location: "Sophienstraße 7, 10178 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock.',
  date: 'Mon, Jan 19 2020, 11:00 am',
  max_members: 13
})
group15.user_id = host5.id
group15.book = book20
group15.language = language1
group15.tag_list.add("NonFicton", "Short Stories")
group15.save

group16 = Group.new({
  name: "Tale of Love",
  location_name: "tigertörtchen - Berlin Cupcakes",
  location: "Spandauer Str. 25, 10178 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock.',
  date: 'Wed, Feb 02 2020, 09:00 pm',
  max_members: 7
})
group16.user_id = host7.id
group16.book = book21
group16.language = language1
group16.tag_list.add("Novel", "Historical Fiction")
group16.save

group17 = Group.new({
  name: "Circular Beings",
  location_name: "Café Konzerthaus",
  location: "Gendarmenmarkt 2, 10117 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock.',
  date: 'Mon, Dec 29 2019, 05:00 pm',
  max_members: 12
})
group17.user_id = host7.id
group17.book = book9
group17.language = language1
group17.tag_list.add("Thriller", "NonFicton")
group17.save

group18 = Group.new({
  name: "Extremely & Incredibly Friendly",
  location_name: "Rausch Schokoladenhaus",
  location: "Charlottenstraße 60, 10117 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock.',
  date: 'Sat, Jan 01 2020, 03:00 pm',
  max_members: 12
})
group18.user_id = host1.id
group18.book = book10
group18.language = language1
group18.tag_list.add("Novel", "Fiction")
group18.save

group19 = Group.new({
  name: "Novel Enthusiasts",
  location_name: "Café Albrecht",
  location: "Reinhardtstraße 23, 10117 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock.',
  date: 'Thu, Jan 22 2020, 03:00 pm',
  max_members: 6
})
group19.user_id = host6.id
group19.book = book11
group19.language = language1
group19.tag_list.add("NonFicton", "Travelling")
group19.save

group20 = Group.new({
  name: "Adventure Junkies",
  location_name: "Chupenga",
  location: "Mohrenstraße 42, 10117 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock.',
  date: 'Sat, Dec 11 2019, 08:00 pm',
  max_members: 5
})
group20.user_id = host1.id
group20.book = book12
group20.language = language1
group20.tag_list.add("Novel", "Fiction", "Thriller")
group20.save

group21 = Group.new({
  name: "Humble Designers",
  location_name: "Hipster Coffehouse",
  location: "Mühlenstraße 13, 10243 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock.',
  date: 'Sat, Dec 20 2019, 07:00 pm',
  max_members: 7
})
group21.user_id = host4.id
group21.book = book16
group21.language = language1
group21.tag_list.add("NonFicton")
group21.save

group22 = Group.new({
  name: "Friendly & Messy",
  location_name: "Le Wagon Office",
  location: "Rudi-Dutschke-Straße 26, 10969 Berlin",
  host_message: 'I always wanted to read this book. It’s time to improve my ordering skills. And if it does not spark joy, it will tell me to get rid of it anyway.',
  date: 'Sat, Jan 03 2020, 03:00 pm',
  max_members: 6
})
group22.user_id = host2.id
group22.book = book17
group22.language = language0
group22.tag_list.add("NonFicton")
group22.save


puts "Groups seeded! #{ Group.count}"


###########
# Membership seed
# ###########
# membership_user1 = Membership.new()
# membership_user1.group = group1
# membership_user1.user = host1
# membership_user1.save


### group 1 ###
Membership.create({user: host3, group: group1})
Membership.create({user: host6, group: group1})
### group 2 ###
Membership.create({user: host2, group: group2})
Membership.create({user: host4, group: group2})
Membership.create({user: host5, group: group2})
### group 3 ###
Membership.create({user: host1, group: group3})
Membership.create({user: host3, group: group3})
Membership.create({user: host4, group: group3})
Membership.create({user: host5, group: group3})
Membership.create({user: host6, group: group3})
Membership.create({user: host7, group: group3})
### group 4 ###
Membership.create({user: host1, group: group4})
Membership.create({user: host2, group: group4})
Membership.create({user: host6, group: group4})
Membership.create({user: host7, group: group4})
### group 5 ###
Membership.create({user: host3, group: group5})
Membership.create({user: host5, group: group5})
### group 6 ###
Membership.create({user: host6, group: group6})
### group 7 ###
Membership.create({user: host4, group: group7})
Membership.create({user: host7, group: group7})

puts "Memberships seeded!"
###########
# comment seed
###########
comment = Comment.new({
  content: 'Hey guys, how are you? I have just begun reading the book and was wondering how far along you all have come. After all, its only 10 days until our meeting. Really excited to finally get to know everyone :slightly_smiling_face:'
})
comment.group = group1
comment.user = host2
comment.save

puts "Comments seeded!"

puts "Seeding done!"
