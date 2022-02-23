# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.destroy_all
User.destroy_all
users = []
5.times do
  users << User.create!(
    email: Faker::Internet.unique.email,
    password: Faker::Alphanumeric.alphanumeric(number: 10),
    username: Faker::Name.name
  )
end

users.each do |user|
  puts "#{user.id}"

  5.times do
    pet = Pet.create!(
      name: Faker::GreekPhilosophers.name,
      user: user,
      pet_type: Faker::Creature::Animal.name,
      description: Faker::ChuckNorris.fact,
      age: rand(1...100),
      rate: rand(1...100),
      img_url: 'https://picsum.photos/seed/picsum/200/300',
      title: Faker::GreekPhilosophers.name,
      location: Faker::Address.full_address
    )
    puts "#{pet.id}"
  end
end

puts "all done"
