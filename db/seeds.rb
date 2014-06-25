# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Word.destroy_all
Category.destroy_all


fruit = Category.create(name: 'Fruit')
colors = Category.create(name: 'Colors')
family = Category.create(name: 'Family')


Word.create([
	{ name: 'banana', image: 'banana.png', pronunciation: 'platano.mp3', category: fruit },
	{ name: 'apple', image: 'apple.png', pronunciation: 'manzana.mp3', category:  fruit },
	{ name: 'grapes', image: 'grape.png', pronunciation: 'uvas.mp3', category:  fruit },
	{ name: 'orange', image: 'orange.png', pronunciation: 'naranja.mp3', category:  fruit },
	{ name: 'grapefruit', category: fruit },
	{ name: 'watermelon', category: fruit },
	{ name: 'red', category: colors },
	{ name: 'blue', category: colors },
	{ name: 'yellow', category: colors },
	{ name: 'mother', category: family },
	{ name: 'father', category: family },
	{ name: 'brother', category: family },
	{ name: 'sister', category: family },
	])
