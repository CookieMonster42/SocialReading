
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

puts "Users seeded!"




###########
# Book seed
###########
book = Book.create({
  title: "brave new world",
  author: 'Aldous Huxley',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley, written in 1931 and published in 1932. Largely set in a futuristic World State, inhabited by genetically modified citizens and an intelligence-based social hierarchy, the novel anticipates huge scientific advancements in reproductive technology, sleep-learning, psychological manipulation and classical ... "
})

puts "Books seeded!"





###########
# group seed
###########
group = Group.new({
  name: "Book Beasts",
  location: "Kottbusser Damm 104, Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Friday, January 21 2020, 8pm'
})
group.user_id = host.id
group.book = book
group.language = language
group.save

group_moskau = Group.new({
  name: "Book Beasts in Moskau",
  location: "moskau",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Friday, January 21 2020, 8pm'
})
group_moskau.user_id = host.id
group_moskau.book = book
group_moskau.language = language
group_moskau.save

group = Group.new({
  name: "The Poor and Infamous",
  location: "Bonanza Coffee Roaster, Adalbertstraße 70, 10999 Berlin",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host1.id
group.book = book
group.language = language
group.save

group = Group.new({
  name: "Aaaaaa Aaaaaaaaa",
  location: "Aaaaaaaaa, Aaaaaaaa Aaaaaaaaa",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host2.id
group.book = book
group.language = language
group.save

group = Group.new({
  name: "Bbbbbbbb Bbbbbbbbbb",
  location: "Bbbbb Bbb, Bbbbbbbb Bbbbbbbbbb",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host3.id
group.book = book
group.language = language
group.save

group = Group.new({
  name: "Cccccc Cccccccccc",
  location: "Ccccc Ccccc, Ccccccc Ccccccccccccc",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host4.id
group.book = book
group.language = language
group.save

group = Group.new({
  name: "Dddddd Ddddddddddd",
  location: "Ddddd Ddddd, Ddddddd Ddddddddddd",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Thu, Nov 28 2020, 19:00 pm'
})
group.user_id = host5.id
group.book = book
group.language = language
group.save

puts "Groups seeded!"





###########
# Membership seed
###########
membership_user1 = Membership.new()
membrship_user1.group = group
membrship_user1.user = user1
membrship_user1.save

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

