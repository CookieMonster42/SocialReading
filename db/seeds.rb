
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

###########
# User/host seed
###########
host = User.create!({
  name: "Andy",
  password: '123456',
  email: 'andy@smile.com',
  bio: 'I love fiction and Babelsberg, I also have some dogs'
})

user1 = User.create({
  name: "Dimitri",
  email: 'dimitri@smile.com',
  password: '123456',
  bio: 'I love fiction and Kreuzberg, I also have some dogs'
})


###########
# Book seed
###########
book = Book.create({
  title: "brave new world",
  author: 'Aldous Huxley',
  description: "Brave New World is a dystopian novel by English author Aldous Huxley, written in 1931 and published in 1932. Largely set in a futuristic World State, inhabited by genetically modified citizens and an intelligence-based social hierarchy, the novel anticipates huge scientific advancements in reproductive technology, sleep-learning, psychological manipulation and classical ... "
})


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
group.save!

group_moskau = Group.new({
  name: "Book Beasts in Moskau",
  location: "moskau",
  host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
  date: 'Friday, January 21 2020, 8pm'
})
group_moskau.user_id = host.id
group_moskau.book = book
group_moskau.language = language
group_moskau.save!

###########
# Membership seed
###########
memebrship_user1 = Membership.new()
memebrship_user1.group = group
memebrship_user1.user = user1
memebrship_user1.save!

###########
# comment seed
###########
comment = Comment.new({
  content: 'Hey guys, how are you? I have just begun reading the book and was wondering how far along you all have come. After all, its only 10 days until our meeting. Really excited to finally get to know everyone :slightly_smiling_face:'
})
comment.group = group
comment.user = user1
comment.save!


puts "sample book, user and group created"

