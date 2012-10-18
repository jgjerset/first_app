# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'Jon', password: 'testing1', password_confirmation: 'testing1')
Product.create(title: 'Medieval Hand Blades', description: 'Owning a pair of these is like being crazy', image_url: 'medieval-hand-blades.jpg', price: '29.95', source: 'Amazon.com', url: 'http://www.amazon.com/Tomahawk-Brand-Skull-Gauntle')
