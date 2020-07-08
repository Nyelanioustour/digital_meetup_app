# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
    User.create(name:Faker::Name.name, password:"password",user_img_url:"")
end

10.times do
    Movie.create(title:Faker::Movie.title, description:Faker::Movie.quote,time:Faker::Time.between(from: DateTime.now, to: DateTime.now + 5, format: :default),max_guests:30,user_id:User.all.sample.id,img_url:"")
end

20.times do
    Attendence.create(user_id:User.all.uniq.sample.id, movie_id:Movie.all.sample.id)
end
