

Booking.destroy_all
Pet.destroy_all
User.destroy_all

users = []
  martyn = User.new(
    email: "m@m.m",
    password: "qwerty",
    username: 'Mrty',
  )
    martyn.photo.attach(io: File.open('app/assets/images/martyn.jpg'), filename: 'martyn.jpg')
    martyn.save
    users << martyn

  georges = User.new(
    email: "g@g.g",
    password: "qwerty",
    username: 'GeoC',
  )
    georges.photo.attach(io: File.open('app/assets/images/georges.jpg'), filename: 'georges.jpg')
    georges.save
    users << georges

  sedrak = User.new(
    email: "s@s.s",
    password: "qwerty",
    username: 'TheRussian',
  )
    sedrak.photo.attach(io: File.open('app/assets/images/sedrak.png'), filename: 'Sedrak.png')
    sedrak.save
    users << sedrak

  raph = User.new(
    email: "r@r.r",
    password: "qwerty",
    username: 'Raph',
  )
  raph.photo.attach(io: File.open('app/assets/images/raph.png'), filename: 'raph.png')
    raph.save
    users << raph

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
    pet1.photo.attach(io: File.open('app/assets/images/jazz.jpg'), filename: 'Jazz.jpg')
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
    address: "Harvard Avenue, Montreal",
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
    address: "Marcil Avenue, Montreal",
    )
    pet3.photo.attach(io: File.open('app/assets/images/Tiger.jpg'), filename: 'Snarl.jpg')
    pet3.save
    pets << pet3

  pet4 = Pet.new(
    user_id: users[1].id,
    pet_type: "Hamster",
    name: "bRody",
    description: "Likes to be handled",
    age: 2,
    rate: 15,
    title: "Pets-2-Go",
    address: "Decarie Boulevard, Montreal",
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
    address: "Boulevard Saint-Martin, Laval",
    )
    pet5.photo.attach(io: File.open('app/assets/images/Cat.jpg'), filename: 'Archie.jpg')
    pet5.save
    pets << pet5

  pet6 = Pet.new(
    user_id: users[2].id,
    pet_type: "Crocodile",
    name: "Gena",
    description: "Likes to roll around",
    age: 19,
    rate: 200,
    title: "Pets-2-Go",
    address: "rue dale, Laval",
    )
    pet6.photo.attach(io: File.open('app/assets/images/Gena.jpg'), filename: 'Gena.jpg')
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
    address: "Park Avenue,Montreal",
    )
    pet7.photo.attach(io: File.open('app/assets/images/Lamb.jpg'), filename: 'HoP.jpg')
    pet7.save
    pets << pet7

  pet8 = Pet.new(
    user_id: users[2].id,
    pet_type: "rabbit",
    name: "Boris",
    description: "Energetic",
    age: 3,
    rate: 400,
    title: "Pets-2-Go",
    address: "rue Dale, Laval",
    )
    pet8.photo.attach(io: File.open('app/assets/images/boris.jpg'), filename: 'boris.jpg')
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
    address: "Guelph Avenue, Montreal",
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
    address: "Cavendish boulevard, Montreal",
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
    address: "Boulevard Thimens, Montreal",
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
    address: "Rue Bertrand, Montreal",
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
    address: "Casgrain Avenue, Montreal",
    )
    pet13.photo.attach(io: File.open('app/assets/images/pet_lion.jpg'), filename: 'Jeffrey.jpg')
    pet13.save
    pets << pet13


puts "all done"
