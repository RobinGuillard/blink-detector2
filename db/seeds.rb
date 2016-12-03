# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Alert.create(
	heures: "11",
	minutes: "12",
	lieu: "Paris",
	active: true
	)
	
Alert.create(
	heures: "13",
	minutes: "14",
	lieu: "Paris",
	active: false
	)

Eeg.create(
	event: "a blink occured",
	date: "2016-11-09"
	)

Eeg.create(
	event: "another blink occured",
	date: "2016-11-09"
	)


Concentration.create(
	concentration_level: 0,
	concentration_value: 0.1

	)

Concentration.create(
	concentration_level: 0,
	concentration_value: 0.2

	)