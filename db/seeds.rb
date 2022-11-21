require 'faker'

Like.all.destroy_all
Post.all.destroy_all
User.all.destroy_all

User.create([
  {username: Faker::Artist.unique.name, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, email: Faker::Internet.unique.free_email, password: 'abcdef'},
  {username: Faker::Artist.unique.name, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, email: Faker::Internet.unique.free_email, password: 'abcdef'},
  {username: Faker::Artist.unique.name, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, email: Faker::Internet.unique.free_email, password: 'abcdef'},
  {username: Faker::Artist.unique.name, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, email: Faker::Internet.unique.free_email, password: 'abcdef'},
  {username: Faker::Artist.unique.name, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, email: Faker::Internet.unique.free_email, password: 'abcdef'},
  {username: "thomas", first_name: "Thomas", last_name: "Lebegue", email: "thomas.lebegue@gmail.com", password: 'abcdef'},
])

p "Users OK"

User.all.each do |user|
  file = URI.open("https://picsum.photos/200/200") # use cloudinary url
  user.avatar.attach(io: file, filename: 'image.jpg')
end

p "Users avatar OK"


Post.create([
  {description: Faker::Quotes::Shakespeare.hamlet_quote, user_id: User.all.sample.id, likes_count: rand(1..2000)},
  {description: Faker::Quotes::Shakespeare.hamlet_quote, user_id: User.all.sample.id, likes_count: rand(1..2000)},
  {description: Faker::Quotes::Shakespeare.hamlet_quote, user_id: User.all.sample.id, likes_count: rand(1..2000)},
  {description: Faker::Quotes::Shakespeare.hamlet_quote, user_id: User.all.sample.id, likes_count: rand(1..2000)},
  {description: Faker::Quotes::Shakespeare.hamlet_quote, user_id: User.all.sample.id, likes_count: rand(1..2000)},
  {description: Faker::Quotes::Shakespeare.hamlet_quote, user_id: User.all.sample.id, likes_count: rand(1..2000)},
  {description: Faker::Quotes::Shakespeare.hamlet_quote, user_id: User.all.sample.id, likes_count: rand(1..2000)},
  {description: Faker::Quotes::Shakespeare.hamlet_quote, user_id: User.all.sample.id, likes_count: rand(1..2000)},
])

p "Posts OK"

Post.all.each do |post|
  file = URI.open("https://picsum.photos/500/500") # use cloudinary url
  post.photo.attach(io: file, filename: 'image.jpg')
end

p "Posts photos OK"
