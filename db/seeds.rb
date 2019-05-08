# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
Category.create(name: "Cool")
Category.create(name: "Cool2")
Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
User.create(username: 'RealBigFish')
