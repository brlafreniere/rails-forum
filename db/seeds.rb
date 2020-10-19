# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! email: "brlafreniere@gmail.com",
    password: "blaine",
    password_confirmation: "blaine",
    username: "brlafreniere",
    role: :admin

10.times do |n|
    Post.create! title: "This is seed post ##{n}",
        body: "This is the text of the seed post.",
        author: user
end

Topic.create! name: "Outdoors & Recreation"