default_password = "123456"
require "open-uri"

5.times do |n|
  User.create!(email: "user#{n}@user.com", password: default_password,
                          first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

puts "studio 1..."
user1 = User.create!(email: "Petergabriel@gmail.com", password: default_password,
                     first_name: "Peter", last_name: "Gabriel")
imagefile1 = URI.open('https://cinesamples.com/magazine/wp-content/uploads/2021/04/Real-World-Studios2-edited-1-1024x576.jpeg')
studio1 = Studio.create!(name:"Real World Studios", address: "7700  BELL LOS ANGELES CA 90001-3132 USA", owner: user1)
studio1.details = "In 1986, singer/songwriter Peter Gabriel brought this studio to life and with it the renewed vigor of bandmates recording together in the same room. The complex has four studios of various types and sizes. You can’t beat the location and they offer a huge collection of vintage and modern audio equipment."
studio1.photo.attach( io: imagefile1, filename: 'studio1.png', content_type: 'image/png')
studio1.save
puts "created sudio 1"

puts "studio 2..."
user2 = User.create!(email: "georgemartin@gmail.com", password: default_password,
                     first_name: "George", last_name: "Martin")
imagefile2 = URI.open('https://cinesamples.com/magazine/wp-content/uploads/2021/04/Platinum-Studios-edited-1.jpeg')
studio2 = Studio.create!(name:"Air Studios", address: "701 E 107TH LOS ANGELES CA 90002-3446 USA", owner: user2)
studio2.details = "Air Studios was founded by legendary producer of The Beatles, Oscar-nominated composer Sir George Martin. He entered the music business in 1950, and five years later became head of the Parlophone label at EMI. In 1962 he signed The Beatles to EMI and went on to produce every record they made until the band parted ways in 1970. He also produced a host of other artists in the 1960s and 1970s, Cilla Black, Gerry and the Pacemakers, Matt Monro, Elton John, Jeff Beck, John Williams, Cheap Trick and Ultravox."
studio2.photo.attach( io: imagefile2, filename: 'studio2.png', content_type: 'image/png')
studio2.save
puts "created sudio 2"

puts "studio 3..."
user3 = User.create!(email: "raymond@gmail.com", password: default_password,
                     first_name: "Raymond", last_name: "Pitcarin")
imagefile3 = URI.open('https://cinesamples.com/magazine/wp-content/uploads/2021/04/allaire-studios-02-edited-1-1024x576.jpeg')
studio3 = Studio.create!(name:"Allaire Studios", address: "200 W 94TH LOS ANGELES CA 90003-4004 USA", owner: user3)
studio3.details = "Upstate New York packs a punch with this 85-acre mountaintop studio that overlooks the Catskill Mountains, just two hours from New York City. Its main room has 45-foot high vaulted ceilings. It’s been the pick for David Bowie and Norah Jones."
studio3.photo.attach( io: imagefile3, filename: 'studio3.png', content_type: 'image/png')
studio3.save
puts "created sudio 3"


puts "studio 4..."
user4 = User.create!(email: "JayZ@gmail.com", password: default_password,
                     first_name: "Jay", last_name: "Z")
imagefile4 = URI.open('https://cinesamples.com/magazine/wp-content/uploads/2021/04/Metropolis-Studios2-edited-1-1024x576.jpeg')
studio4 = Studio.create!(name:"Metropolis Studios", address: "1951 E 95TH LOS ANGELES CA 90002-2562 USA", owner: user4)
studio4.details = "Born in 1985 as a studio, the Metropolis was once home to the Chiswick Power House, a massive and beautiful building commissioned in 1900 to house the London Tram System. When built, the boast was for its engineering technology and massive size. That same charm comes through today at the Metropolis."
studio4.photo.attach( io: imagefile4, filename: 'studio4.png', content_type: 'image/png')
studio4.save
puts "created sudio 4"


puts "studio 5..."
user5 = User.create!(email: "john@gmail.com", password: default_password,
                     first_name: "John", last_name: "Mcbride")
imagefile5 = URI.open('https://cinesamples.com/magazine/wp-content/uploads/2021/04/Blackbird-Studio-Nashville-TN-edited-1024x576.jpeg')
studio5 = Studio.create!(name:"BlackBird Studios", address: "1407 E GAGE LOS ANGELES CA 90001-1781 USA", owner: user5)
studio5.details = "It just looks intriguing with all the wooden dowels to help the acoustics work their magic. The country power couple of sound engineer John McBride and singer/songwriter Martina McBride opened this studio in 2003. They also offer classes on sound engineering when they aren’t catering to giants like Keith Urban, The Chieftans, Taylor Swift, and Kid Rock."
studio5.photo.attach( io: imagefile5, filename: 'studi5.png', content_type: 'image/png')
studio5.save
puts "created sudio 5"

puts "studio 6..."
user6 = User.create!(email: "steven@gmail.com", password: default_password,
                     first_name: "Steven", last_name: "Collins")
imagefile6 = URI.open('https://cinesamples.com/magazine/wp-content/uploads/2021/04/Capitol-Studios-edited-1.jpeg')
studio6 = Studio.create!(name:"Capitol Studios", address: " 7200  AVALON LOS ANGELES CA 90003-2228 USA", owner: user6)
studio6.details = "Capitol Studios is a recording studio located at the landmark Capitol Records Tower in Hollywood, California. Established in 1956, the studios were initially the primary recording studios for American record label Capitol Records. While they are still regularly used by Capitol recording artists, the studios began making the facility available to artists outside the label during the late 1960s to early 1970s."
studio6.photo.attach( io: imagefile6, filename: 'studio6.png', content_type: 'image/png')
studio6.save
puts "created sudio 6"
