
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
tags = ['Fantasy','Fairy Tale', 'Fiction', 'Thriller', 'Historical Fiction', 'Science Fiction', 'Novel', 'Horror', 'Short Stories', 'Travelling']

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
  description: "Until the moment he received a frantic call from his father, Daniel believed his parents were headed into a peaceful, well-deserved retirement. They had sold their home and business in London, and said "farewell to England" with a cheerful party where all their friends had gathered to wish them well on their great adventure: setting off to begin life anew on a remote, bucolic farm in rural Sweden.",
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

puts "Books seeded!"





###########
# group seed
###########
group1 = Group.new({
  name: "Clever Witches",
  location: "Ankerklause, Kottbusser Damm 104 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Friday, January 21 2020, 20:00 pm',
  max_members: 10
})
group1.user_id = host7.id
group1.book = book
group1.language = language0
group1.tag_list.add("#{tags.sample}", "#{tags.sample}", "#{tags.sample}")
group1.save

group2 = Group.new({
  name: "Find The Real You",
  location: "Bonanza, Adalbertstraße 70 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Sun, Dec 01 2019, 11:00 am',
  max_members: 15
})
group2.user_id = host1.id
group2.book = book1
group2.language = language1
group2.tag_list.add("#{tags.sample}", "#{tags.sample}", "#{tags.sample}")
group2.save

group3 = Group.new({
  name: "Be Real Adventurer",
  location: "Arabica, Reichenberger Str. 36 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Sat, Dec 14 2019, 18:00 pm',
  max_members: 7
})
group3.user_id = host2.id
group3.book = book2
group3.language = language0
group3.tag_list.add("#{tags.sample}", "#{tags.sample}", "#{tags.sample}")
group3.save

group4 = Group.new({
  name: "Who is U",
  location: "Cuccuma, Zossener Str. 34 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Fri, Dec 06 2019, 09:00 am',
  max_members: 9
})
group4.user_id = host3.id
group4.book = book3
group4.language = language1
group4.tag_list.add("#{tags.sample}")
group4.save

group5 = Group.new({
  name: "Out of My Mind",
  location: "Lima",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Wed, Dec 04 2019, 13:00 pm',
  max_members: 12
})
group5.user_id = host4.id
group5.book = book4
group5.language = language0
group5.tag_list.add("#{tags.sample}", "#{tags.sample}", "#{tags.sample}")
group5.save

group6 = Group.new({
  name: "We are The Children",
  location: "Two and Two, Pannierstraße 6, Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Wed, Dec 04 2019, 16:00 pm',
  max_members: 10
})
group6.user_id = host5.id
group6.book = book5
group6.language = language1
group6.tag_list.add("#{tags.sample}", "#{tags.sample}")
group6.save

group7 = Group.new({
  name: "Better Way of Thinking",
  location: "Moscow",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Dec 31 2019, 11:00 am',
  max_members: 8
})
group7.user_id = host6.id
group7.book = book6
group7.language = language0
group7.tag_list.add("#{tags.sample}")
group7.save

puts "Groups seeded!"





###########
# Membership seed
# ###########
# membership_user1 = Membership.new()
# membership_user1.group = group1
# membership_user1.user = host1
# membership_user1.save


### group 1 ###
Membership.create({user: host1, group: group1})
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


puts "sample book, user and group created"
