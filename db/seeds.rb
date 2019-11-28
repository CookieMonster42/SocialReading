
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

host = User.create({
  name: "Andy",
  password: '123456',
  email: 'andy@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "shining-cover.jpg"
})

host1 = User.create({
  name: "Lala",
  password: '123456',
  email: 'lala@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "shining-cover.jpg"
})

host2 = User.create({
  name: "Kevin",
  password: '123456',
  email: 'kevin@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "shining-cover.jpg"
})

host3 = User.create({
  name: "Jay",
  password: '123456',
  email: 'jay@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "shining-cover.jpg"
})

host4 = User.create({
  name: "May",
  password: '123456',
  email: 'may@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "shining-cover.jpg"
})

host5 = User.create({
  name: "Des",
  password: '123456',
  email: 'des@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "shining-cover.jpg"
})

host6 = User.create({
  name: "Roy",
  password: '123456',
  email: 'roy@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs',
  photo: "shining-cover.jpg"
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
  date: 'Friday, January 21 2020, 8pm'
})
group.user_id = host.id
group.book = book
group.language = language
group.save

group2 = Group.new({
  name: "Find The Real You",
  location: "Adalbertstraße 70 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host1.id
group.book = book1
group.language = language
group.save

group3 = Group.new({
  name: "Be Real Adventurer",
  location: "Reichenberger Str. 36 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host2.id
group.book = book2
group.language = language
group.save

group4 = Group.new({
  name: "Who is U",
  location: "Cuccuma, Zossener Str. 34 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host3.id
group.book = book3
group.language = language
group.save

group5 = Group.new({
  name: "Out of My Mind",
  location: "Lima",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host4.id
group.book = book4
group.language = language
group.save

group6 = Group.new({
  name: "We are The Children",
  location: "Two and Two, Pannierstraße 6, Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host5.id
group.book = book5
group.language = language
group.save

group7 = Group.new({
  name: "Better Way of Thinking",
  location: "Moscow",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Fri, Nov 29 2020, 11:00 am'
})
group.user_id = host6.id
group.book = book6
group.language = language
group.save

puts "Groups seeded!"





###########
# Membership seed
###########
membership_user1 = Membership.new()
membership_user1.group = group1
membership_user1.user = host1
membership_user1.save


Membership.create({user: host1, group: group1})
Membership.create({user: host2, group: group2})
Membership.create({user: host3, group: group3})
Membership.create({user: host4, group: group4})
Membership.create({user: host5, group: group5})
Membership.create({user: host6, group: group6})
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
