puts 'Destroying parks...'
Park.destroy_all if Rails.env.development?

puts 'Creating parks....'
park = Park.create!(
  name: "Jurassic Park",
  banner_url: "https://pmcdeadline2.files.wordpress.com/2017/01/jurassicpark.jpg?crop=5px%2C92px%2C1138px%2C638px&resize=681%2C383"
)
# 5.times do
#   Dinosaur.create!(
#     name:
#     image
#   )
# end

Park.create!(
  name: "Jurassic World",
  banner_url: "https://universalnews.org/wp-content/uploads/2020/04/jurassic-world-3.jpg"
)
puts "Created #{Park.count} parks...."
