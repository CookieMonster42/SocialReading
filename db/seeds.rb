
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
host = User.create({
  name: "Andy",
  password: '123456',
  email: 'andy@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs'
})

host1 = User.create({
  name: "Lala",
  password: '123456',
  email: 'lala@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs'
})

host2 = User.create({
  name: "Kevin",
  password: '123456',
  email: 'kevin@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs'
})

host3 = User.create({
  name: "Jay",
  password: '123456',
  email: 'jay@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs'
})

host4 = User.create({
  name: "May",
  password: '123456',
  email: 'may@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs'
})

host5 = User.create({
  name: "Des",
  password: '123456',
  email: 'des@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs'
})

host6 = User.create({
  name: "Roy",
  password: '123456',
  email: 'roy@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs'
})

puts "Users seeded!"




###########
# Book seed
###########
book = Book.create({
  title: "brave new world",
  author: 'Aldous Huxley',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley, written in 1931 and published in 1932. Largely set in a futuristic World State, inhabited by genetically modified citizens and an intelligence-based social hierarchy, the novel anticipates huge scientific advancements in reproductive technology, sleep-learning, psychological manipulation and classical ... ",
  photo: "bookcover.jpg"
})

book1 = Book.create({
  title: "brave new world",
  author: 'Aldous Huxley',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover1.jpg"
})

book2 = Book.create({
  title: "brave new world",
  author: 'Aldous Huxley',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover2.jpg"
})

book3 = Book.create({
  title: "brave new world",
  author: 'Aldous Huxley',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover3.jpg"
})

book4 = Book.create({
  title: "brave new world",
  author: 'Aldous Huxley',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover4.jpg"
})

book5 = Book.create({
  title: "brave new world",
  author: 'Aldous Huxley',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover5.jpg"
})

book6 = Book.create({
  title: "brave new world",
  author: 'Aldous Huxley',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley.",
  photo: "bookcover6.jpg"
})

puts "Books seeded!"





###########
# group seed
###########
group = Group.new({
  name: "Clever Witches",
  location: "Ankerklause, Kottbusser Damm 104 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Friday, January 21 2020, 8pm'
})
group.user_id = host.id
group.book = book
group.language = language
group.save

group = Group.new({
  name: "Find The Real You",
  location: "Bonanza Coffee Roaster, Adalbertstraße 70 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host1.id
group.book = book1
group.language = language
group.save

group = Group.new({
  name: "Be Real Adventurer",
  location: "Arabica Coffee Shop, Reichenberger Str. 36 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host2.id
group.book = book2
group.language = language
group.save

group = Group.new({
  name: "Who is U",
  location: "Cuccuma, Zossener Str. 34 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host3.id
group.book = book3
group.language = language
group.save

group = Group.new({
  name: "Out of My Mind",
  location: "19 grams Schlesi, Schlesische Str. 38, Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host4.id
group.book = book4
group.language = language
group.save

group = Group.new({
  name: "We are The Children",
  location: "Two and Two, Pannierstraße 6, Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host5.id
group.book = book5
group.language = language
group.save

group = Group.new({
  name: "Better Way of Thinking",
  location: "The Coffee Ape, Hermannplatz, Berlin",
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
membership_user1.group = group
membership_user1.user = user1
membership_user1.save

puts "Memberships seeded!"
###########
# comment seed
###########
comment = Comment.new({
  content: 'Hey guys, how are you? I have just begun reading the book and was wondering how far along you all have come. After all, its only 10 days until our meeting. Really excited to finally get to know everyone :slightly_smiling_face:'
})
comment.group = group
comment.user = user1
comment.save

puts "Comments seeded!"


puts "sample book, user and group created"
