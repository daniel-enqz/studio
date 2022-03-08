require 'date'
default_password = "123456"

20.times do |n|
  customer = User.create!(email: "customer#{n}@user.com", password: default_password)
  owner = User.create!(email: "owner#{n}@user.com", password: default_password)
  studio = Studio.create!(name: Faker::Company.name, address: Faker::Address.full_address, owner: owner)
  Booking.create!(customer: customer, studio: studio, start_on: Date.new, end_on: Faker::Date.forward(days: 23))
end
