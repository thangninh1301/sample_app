# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create a main sample user.
User.create!(name: 'Example User',
             email: 'example@railstutorial.org',
             password: 'foobar')

# Generate a bunch of additional users.
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n + 1}@railstutorial.org"
  password = 'password'
  User.create!(name: name,
               email: email,
               password: password)
end
# fake micropost
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) }
end

# fake user flowing
users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

# fake reaction
users = User.all
User_liked = users[2..10]
User_liked.each do |each_user|
  microposts = Micropost.all[0..50]
  microposts.each do |micropost|
    Reaction.create!(icon_id: 1,
                     reactor_id: each_user.id,
                     react_to_id: micropost.id,
                     react_to_type: micropost.class.name)
  end
end
