
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
language = Language.create({name: "English"})

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
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "https://avatars3.githubusercontent.com/u/12513436?v=4"
})

host2 = User.create({
  name: "Lala",
  password: '123456',
  email: 'lala@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: 'https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80'
})

host3 = User.create({
  name: "Kevin",
  password: '123456',
  email: 'kevin@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
})

host4 = User.create({
  name: "Jay",
  password: '123456',
  email: 'jay@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
})

host5 = User.create({
  name: "May",
  password: '123456',
  email: 'may@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "https://images.unsplash.com/photo-1493106819501-66d381c466f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
})

host6 = User.create({
  name: "Des",
  password: '123456',
  email: 'des@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "https://images.unsplash.com/photo-1519345182560-3f2917c472ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
})

host7 = User.create({
  name: "Roy",
  password: '123456',
  email: 'roy@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
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
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover1.jpg"
})

book2 = Book.create({
  title: "On the Road",
  author: 'Jack Kerouac',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover2.jpg"
})

book3 = Book.create({
  title: "Tom McCarthy",
  author: 'Satin Island',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover3.jpg"
})

book4 = Book.create({
  title: "The Farm",
  author: 'Tom Rob Smith',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover4.jpg"
})

book5 = Book.create({
  title: "The Little Prince",
  author: 'Antoine de Saint-Exupéry',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover5.jpg"
})

book6 = Book.create({
  title: "Thinking, Fast and Slow",
  author: 'Daniel Kahneman',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover6.jpg"
})

puts "Books seeded!"





###########
# group seed
###########
group1 = Group.new({
  name: "Clever Witches",
  location: "Kottbusser Damm 104 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Friday, January 21 2020, 20:00 pm',
  max_members: 10
})
group1.user_id = host7.id
group1.book = book
group1.language = language
group1.tag_list
group1.save

group2 = Group.new({
  name: "Find The Real You",
  location: "Adalbertstraße 70 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Sun, Dec 01 2019, 11:00 am',
  max_members: 15
})
group2.user_id = host1.id
group2.book = book1
group2.language = language
group2.save

group3 = Group.new({
  name: "Be Real Adventurer",
  location: "Reichenberger Str. 36 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Sat, Dec 14 2019, 18:00 pm',
  max_members: 6
})
group3.user_id = host2.id
group3.book = book2
group3.language = language
group3.save

group4 = Group.new({
  name: "Who is U",
  location: "Cuccuma, Zossener Str. 34 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Fri, Dec 06 2019, 09:00 am',
  max_members: 5
})
group4.user_id = host3.id
group4.book = book3
group4.language = language
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
group5.language = language
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
group6.language = language
group6.save

group7 = Group.new({
  name: "Better Way of Thinking",
  location: "Moscow",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Dec 31 2019, 11:00 am',
  max_members: 5
})
group7.user_id = host6.id
group7.book = book6
group7.language = language
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
