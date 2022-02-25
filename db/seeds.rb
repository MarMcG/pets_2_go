

Booking.destroy_all
Pet.destroy_all
User.destroy_all

users = []
  users << User.create!(
    email: "m@m.m",
    password: "qwerty",
    username: 'BigM',
  )
  users << User.create!(
    email: "g@g.g",
    password: "qwerty",
    username: 'BigG',
  )
  users << User.create!(
    email: "s@s.s",
    password: "qwerty",
    username: 'BigS',
  )
  users << User.create!(
    email: "r@r.r",
    password: "qwerty",
    username: 'BigR',
  )
pets = []
  pet1 = Pet.new(
    user_id: users[0].id,
    pet_type: "Dog",
    name: "Jazz",
    description: "Playful",
    age: 3,
    rate: 50,
    title: "Pets-2-Go",
    address: "Oxford Avenue, Montreal",
    )
    pet1.photo.attach(io: File.open('app/assets/images/2.jpg'), filename: 'Jazz.jpg')
    pet1.save
    pets << pet1

  pet2 = Pet.new(
    user_id: users[0].id,
    pet_type: "Dog",
    name: "Eyeball",
    description: "Clumsy",
    age: 2,
    rate: 40,
    title: "Pets-2-Go",
    address: "Oxford Avenue, Montreal",
    )
    pet2.photo.attach(io: File.open('app/assets/images/1.jpg'), filename: 'Eyeball.jpg')
    pet2.save
    pets << pet2

  pet3 = Pet.new(
    user_id: users[1].id,
    pet_type: "Tiger",
    name: "Snarl",
    description: "Sharp Wit, Sharper nails",
    age: 7,
    rate: 160,
    title: "Pets-2-Go",
    address: "Oxford Avenue, Montreal",
    )
    pet3.photo.attach(io: File.open('app/assets/images/Tiger.jpg'), filename: 'Snarl.jpg')
    pet3.save
    pets << pet3

  pet4 = Pet.new(
    user_id: users[1].id,
    pet_type: "Hamster",
    name: "bRody",
    description: "Likes to be handled",
    age: 1,
    rate: 15,
    title: "Pets-2-Go",
    address: "Montreal",
    )
    pet4.photo.attach(io: File.open('app/assets/images/hamster.jpg'), filename: 'bRody.jpg')
    pet4.save
    pets << pet4

  pet5 = Pet.new(
    user_id: users[1].id,
    pet_type: "Cat",
    name: "Archie",
    description: "Loner",
    age: 4,
    rate: 30,
    title: "Pets-2-Go",
    address: "Laval",
    )
    pet5.photo.attach(io: File.open('app/assets/images/Cat.jpg'), filename: 'Archie.jpg')
    pet5.save
    pets << pet5

  pet6 = Pet.new(
    user_id: users[2].id,
    pet_type: "Crocodile",
    name: "Dundee",
    description: "Likes to roll around",
    age: 1,
    rate: 200,
    title: "Pets-2-Go",
    address: "Laval",
    )
    pet6.photo.attach(io: File.open('app/assets/images/tinycroc.jpg'), filename: 'Dunde7.jpg')
    pet6.save
    pets << pet6

  pet7 = Pet.new(
    user_id: users[2].id,
    pet_type: "Sheep",
    name: "HoP",
    description: "Likes to jump around",
    age: 2,
    rate: 24,
    title: "Pets-2-Go",
    address: "Montreal",
    )
    pet7.photo.attach(io: File.open('app/assets/images/Lamb.jpg'), filename: 'HoP.jpg')
    pet7.save
    pets << pet7

  pet8 = Pet.new(
    user_id: users[2].id,
    pet_type: "rabbit",
    name: "Thumper",
    description: "Energetic",
    age: 4,
    rate: 27,
    title: "Pets-2-Go",
    address: "Montreal",
    )
    pet8.photo.attach(io: File.open('app/assets/images/rabbit.jpg'), filename: 'Thumper.jpg')
    pet8.save
    pets << pet8

  pet9 = Pet.new(
    user_id: users[3].id,
    pet_type: "ferret",
    name: "Fred",
    description: "Squirmy",
    age: 3,
    rate: 22,
    title: "Pets-2-Go",
    address: "Montreal",
    )
    pet9.photo.attach(io: File.open('app/assets/images/ferret.jpg'), filename: 'Fred.jpg')
    pet9.save
    pets << pet9

  pet10 = Pet.new(
    user_id: users[3].id,
    pet_type: "Dragon",
    name: "Peter",
    description: "Big. Green. Fiery attitude",
    age: 469,
    rate: 350,
    title: "Pets-2-Go",
    address: "Laval",
    )
    pet10.photo.attach(io: File.open('app/assets/images/dragon.jpg'), filename: 'Peter.jpg')
    pet10.save
    pets << pet10

  pet11 = Pet.new(
    user_id: users[3].id,
    pet_type: "Dog",
    name: "Spot",
    description: "Likes to play hide and seek",
    age: 5,
    rate: 48,
    title: "Pets-2-Go",
    address: "Laval",
    )
    pet11.photo.attach(io: File.open('app/assets/images/3.jpg'), filename: 'Spot.jpg')
    pet11.save
    pets << pet11

  pet12 = Pet.new(
    user_id: users[0].id,
    pet_type: "Chimpanzee",
    name: "Chocolate",
    description: "Swings into action",
    age: 3,
    rate: 64,
    title: "Pets-2-Go",
    address: "Laval",
    )
    pet12.photo.attach(io: File.open('app/assets/images/chimp.jpg'), filename: 'Chocolate.jpg')
    pet12.save
    pets << pet12

  pet13 = Pet.new(
    user_id: users[1].id,
    pet_type: "Lion",
    name: "Jeffrey",
    description: "Lazy and Loveable",
    age: 4,
    rate: 128,
    title: "Pets-2-Go",
    address: "Ottawa",
    )
    pet13.photo.attach(io: File.open('app/assets/images/pet_lion.jpg'), filename: 'Jeffrey.jpg')
    pet13.save
    pets << pet13

    puts pets[0].id
  # Booking.create!(
  #   user_id: users[0].id,
  #   pet_id: pets[8].id,
  #   start_date:  Date.new(2022, 2, 26),
  #   end_date: Date.new(2023, 5, 30),
  # )
  # Booking.create!(
  #   user_id: users[1].id,
  #   pet_id: pets[7].id,
  #   start_date:  Date.new(2022, 2, 28),
  #   end_date: Date.new(2023, 4, 30),
  # )
  # Booking.create!(
  #   user_id: users[2].id,
  #   pet_id: pets[6].id,
  #   start_date:  Date.new(2022, 3, 7),
  #   end_date: Date.new(2023, 3, 14),
  # )
  # Booking.create!(
  #   user_id: users[3].id,
  #   pet_id: pets[5].id,
  #   start_date:  Date.new(2022, 3, 14),
  #   end_date: Date.new(2023, 3, 30),
  # )
  # Booking.create!(
  #   user_id: users[0].id,
  #   pet_id: pets[4].id,
  #   start_date:  Date.new(2022, 3, 20),
  #   end_date: Date.new(2023, 3, 30),
  # )
  # Booking.create!(
  #   user_id: users[1].id,
  #   pet_id: pets[9].id,
  #   start_date: Date.new(2022, 3, 1),
  #   end_date: Date.new(2023, 7, 30),
  # )




    # 5.times do
    #   booking = Booking.create(
    #     user_id: users.sample.id,
    #     pet_id: pets_array[rand(pets_array.length - 1)].id,
    #     start_date: Date.new(2022, 1, 1),
    #     end_date: Date.new(2023, 7, 30)
    #   )

    #   puts booking.valid?
    #   puts booking.errors.messages
    # end
