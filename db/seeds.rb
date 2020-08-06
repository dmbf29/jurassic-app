puts 'Destroying parks...'
Park.destroy_all if Rails.env.development?

puts 'Creating parks....'
park = Park.create!(
  name: "Jurassic Park",
  banner_url: "https://pmcdeadline2.files.wordpress.com/2017/01/jurassicpark.jpg?crop=5px%2C92px%2C1138px%2C638px&resize=681%2C383"
)

Park.create!(
  name: "Jurassic World",
  banner_url: "https://universalnews.org/wp-content/uploads/2020/04/jurassic-world-3.jpg"
)
puts "Created #{Park.count} parks...."

Dinosaur.destroy_all if Rails.env.development?

Dinosaur.create!(
  name: "Yoshi",
  image_url: "https://pbs.twimg.com/media/Drk3tamUcAIhrVy.jpg",
  park: park
)

Dinosaur.create!(
  name: "Denver",
  image_url: "https://s23269.pcdn.co/wp-content/uploads/2013/07/tumblr_m850wkhYeV1r9a32bo1_400.jpg",
  park: park
)

Dinosaur.create!(
  name: "Barney",
  image_url: "https://static01.nyt.com/images/2017/04/09/arts/09BARNEY/09BARNEY-facebookJumbo.jpg",
  park: park
)

Dinosaur.create!(
  name: "Little Foot",
  image_url: "https://i.imgur.com/tGMFnax.jpg",
  park: park
)

Dinosaur.create!(
  name: "Mr. T-Rex",
  image_url: "https://cdn.trendhunterstatic.com/thumbs/cartoon-celebrity.jpeg",
  park: park
)
puts "destroying all weapons..."
Weapon.destroy_all

puts "Creating weapons...."
15.times do
  name = Faker::JapaneseMedia::SwordArtOnline.item
  next if Weapon.find_by(name: name)

  Weapon.create!(
    name: name
  )
end
puts "Created #{Weapon.count} weapons...."
