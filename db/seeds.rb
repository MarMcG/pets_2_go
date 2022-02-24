# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.destroy_all
User.destroy_all
Booking.destroy_all
users = []

  users << User.create!(
    email: "m@m.m",
    password: "qwerty",
    username: 'BigM'
  )
  users << User.create!(
    email: "g@g.g",
    password: "qwerty",
    username: 'BigG'
  )
  users << User.create!(
    email: "s@s.s",
    password: "qwerty",
    username: 'BigS'
  )
  users << User.create!(
    email: "r@r.r",
    password: "qwerty",
    username: 'BigR'
  )


users.each do |user|
  puts "#{user.id}"

  3.times do
    pet = Pet.create!(
      pet_type: Faker::Creature::Animal.name,
      name: Faker::GreekPhilosophers.name,
      user: user,
      description: "lorem ipsum",
      age: rand(1...10),
      rate: rand(1...100),
      img_url: 'https://picsum.photos/seed/picsum/200/300',
      title: Faker::GreekPhilosophers.name,
    )
    puts "#{pet.id}"
  end
end




# puts "all done"
