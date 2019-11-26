
puts "Cleans DB..."
Group.destroy_all
User.destroy_all

puts "Adds 20 new User records..."
20.times do
  user = User.create!(
    name: Faker::FunnyName.name,
    password: 'valid_password',
    password_confirmation: 'valid_password',
    email: Faker::Internet.email
  )

  puts "Adds 3 new Group records..."
  3.times do
    group = Group.create!(
      name: Faker::FunnyName.name,
      location: Faker::Nation.capital_city,
      host_message: Faker::Hacker.say_something_smart,
      date: Faker::Time.between(from: DateTime.new(2018,2,3,4,5,6) - 1, to: DateTime.new(2020,5,3,4,5,6)),
      user: user
  )
  end
end





































# Book.destroy_all
# Group.destroy_all
# User.destroy_all
# Language.destroy_all
# Membership.destroy_all
# Comment.destroy_all

# puts "Destroyed all records of users, books and groups!"

# ###########
# # Language seed
# ###########
# language = Language.create!({name: "English"})

# puts "Languages seeded!"




# ###########
# # User/host seed
# ###########
# host = User.create!({
#   name: "Andy",
#   password: '123456',
#   email: 'andy@smile.com',
#   bio: 'I love fiction and Babelsberg, I also have some dogs'
# })

# host1 = User.create!({
#   name: "Lala",
#   password: '123456',
#   email: 'lala@smile.com',
#   bio: 'I love fiction and Babelsberg, I also have some dogs'
# })

# host2 = User.create!({
#   name: "Kevin",
#   password: '123456',
#   email: 'kevin@smile.com',
#   bio: 'I love fiction and Babelsberg, I also have some dogs'
# })

# host3 = User.create!({
#   name: "Andy",
#   password: '123456',
#   email: 'andy@smile.com',
#   bio: 'I love fiction and Babelsberg, I also have some dogs'
# })

# host4 = User.create!({
#   name: "Lala",
#   password: '123456',
#   email: 'lala@smile.com',
#   bio: 'I love fiction and Babelsberg, I also have some dogs'
# })

# host5 = User.create!({
#   name: "Kevin",
#   password: '123456',
#   email: 'kevin@smile.com',
#   bio: 'I love fiction and Babelsberg, I also have some dogs'
# })

# puts "Users seeded!"




# ###########
# # Book seed
# ###########
# book = Book.create!({
#   title: "brave new world",
#   author: 'Aldous Huxley',
#   description: "Brave New World is a dystopian novel by English author Aldous Huxley, written in 1931 and published in 1932. Largely set in a futuristic World State, inhabited by genetically modified citizens and an intelligence-based social hierarchy, the novel anticipates huge scientific advancements in reproductive technology, sleep-learning, psychological manipulation and classical ... "
# })

# puts "Books seeded!"





# ###########
# # group seed
# ###########
# group = Group.new({
#   name: "Book Beasts",
#   location: "Ankerklause, Kottbusser Damm 104",
#   host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
#   date: 'Friday, January 21 2020, 8pm'
# })
# group.user_id = host.id
# group.book = book
# group.language = language
# group.save!

# group = Group.new({
#   name: "The Poor and Infamous",
#   location: "Bonanza Coffee Roaster, Adalbertstraße 70, 10999 Berlin",
#   host_message: 'This book is starring at me for years now. I always wanted to read it. It’s time to improve my German skills. Don’t ask me why German, but hey, fuck it. Let’s rock. ',
#   date: 'Thu, Nov 28 2020, 19:00 pm'
# })
# group.user_id = host1.id
# group.book = book
# group.language = language
# group.save!

# puts "Groups seeded!"





# ###########
# # Membership seed
# ###########
# membership_user1 = Membership.new()
# membership_user1.group = group
# membership_user1.user = user1
# membership_user1.save!

# puts "Memberships seeded!"
# ###########
# # comment seed
# ###########
# comment = Comment.new({
#   content: 'Hey guys, how are you? I have just begun reading the book and was wondering how far along you all have come. After all, its only 10 days until our meeting. Really excited to finally get to know everyone :slightly_smiling_face:'
# })
# comment.group = group
# comment.user = user1
# comment.save!

# puts "Comments seeded!"


# puts "sample book, user and group created"

