# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Word.create([
	{ name: 'banana', image: 'banana.png'},
	{ name: 'apple', image: 'apple.png'},
	{ name: 'grapes', image: 'grape.png'},
	{ name: 'orange', image: 'orange.png'},
	{ name: 'watermelon' },
	{ name: 'grapefruit' },
	{ name: 'stinkyfruit' }
	])

Category.create([
	{ name: 'Fruit' },
	{ name: 'Colors' },
	{ name: 'Family' }
	])