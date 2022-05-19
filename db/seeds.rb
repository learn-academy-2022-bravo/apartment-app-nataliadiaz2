user = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

apartments = [
  {
    street: 'Diagon Alley',
    city: 'London',
    state: 'United Kingdom',
    manager: 'Severus Snape',
    email: 'ssssnape@gamil.com',
    price: '15 pounds',
    bedrooms: 4,
    bathrooms: 2,
    pets: 'Allowed',
    image: 'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=Mnwhttps://i.insider.com/5a5e143155ac56f5168b4598?width=1000&format=jpeg&auto=webp',
  },
  {
    street: 'Diagon Alley',
    city: 'London',
    state: 'United Kingdom',
    manager: 'Severus Snape',
    email: 'ssssnape@gamil.com',
    price: '20 pounds',
    bedrooms: 6,
    bathrooms: 4,
    pets: 'Allowed if not annoying',
    image: 'https://i.insider.com/5a5e143155ac5624008b45ac?width=1000&format=jpeg&auto=webp',
  },
  {
    street: 'Acanthia Way',
    city: 'London',
    state: 'United Kingdom',
    manager: 'Minerva McGonagall',
    email: 'mcgonagallseeker@gmail.com',
    price: '20 pounds',
    bedrooms: 5,
    bathrooms: 3,
    pets: 'Cats are allowed',
    image: 'https://www.flyingwithababy.com/wp-content/uploads/2021/04/Harry-Potter-themed-Room-Dijon-0-Rue-Chaudronnerie-Dijon-Centre-Ville-21000-Dijon-France-%E2%80%93airbnb-and-Booking.com_.png',
  },
  {
    street: 'Knockturn Alley',
    city: 'London',
    state: 'Jack',
    manager: 'Bellatrix LeStrange',
    email: 'strange@gmail.com',
    price: '300 pounds',
    bedrooms: 2,
    bathrooms: 1,
    pets: 'Only Snakes',
    image: 'https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco/at%2Fnews-culture%2F2019-07%2FDumb_005_03',
  },
  {
    street: 'Grimmauld Place',
    city: 'London',
    state: 'United Kingdom',
    manager: 'Albus Dumbledore',
    email: 'albus@gmail.com',
    price: '100 pounds',
    bedrooms: 6,
    bathrooms: 4,
    pets: 'For anyone pure of heart',
    image: 'https://static01.nyt.com/images/2013/04/26/greathomesanddestinations/26iht-reharry26-span/26iht-reharry26-span-articleLarge.jpg?quality=75&auto=webp&disable=upscale',
  }
]

apartments.each do |each_apartment|
    user.apartments.create each_apartment
  puts "creating apartment #{each_apartment}"
end