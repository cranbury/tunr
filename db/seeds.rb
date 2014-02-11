# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


swift = Artist.create(name: "Taylor Swift", genre: "Pop", photo_url: "http://www.sosoactive.com/wp-content/uploads/2013/09/Taylor-Swift.jpg")
bob = Artist.create(name: "Bob Dylan", genre: "Folk", photo_url: "http://johannasvisions.com/wp-content/uploads/2012/04/Bob_Dylan-Town_Hall_1963.jpg")



swift.songs.create(title: "Love Story", year: 2010)
swift.songs.create(title: "Back Together", year: 2010)

bob.songs.create(title: "Like a Rolling Stone", year: 1968)
bob.songs.create(title: "Quinn", year: 1970)