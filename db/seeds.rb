# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
password = "vuitton"

User.create!(name: 'cujo3', email: 'cujo3@bloghouse.me', password: password, password_confirmation: password, admin: true)

99.times do |n|
	name = Faker::Name.name
	email = Faker::Internet.email
	password = password
	password_confirmation = password
	User.create!(name: name, email: email, password: password, password_confirmation: password)
end