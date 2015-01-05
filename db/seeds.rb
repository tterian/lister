# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: 					"Example User",
			 email: 				"kimjong@un.org",
			 password: 				"interview",
			 password_confirmation: "interview",
			 admin: 				true,
			 activated: 			true,
			 activated_at: 			Time.zone.now)

49.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@user.com"
	password = "password"
	User.create!(name: 					name,
				 email: 				email,
				 password: 				password,
				 password_confirmation: password,
				 activated: 			true,
				 activated_at: 			Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
	make = rand(1..10)
	note = Faker::Lorem.sentence(5)
	users.each do |user|
		user.cars.create!(make: make, note: note)
	end
end


#Setup makes table

makes = [ 	'Acura',
			'Alfa Romeo',
			'Aston Martin',
			'Audi',
			'BMW',
			'Bentley',
			'Bizzarrini',
			'Bufori',
			'Bugatti',
			'Buick',
			'CMC',
			'Cadillac',
			'Chevrolet',
			'Chrysler',
			'Citroen',
			'Daewoo',
			'Daihatsu',
			'DeLorean',
			'Dodge',
			'Ferrari',
			'Fiat',
			'Fisker',
			'Ford',
			'GAC Gonow',
			'GMC',
			'Honda',
			'Hummer',
			'Hyundai',
			'Infiniti',
			'Isuzu',
			'JAC',
			'JMC',
			'Jaguar',
			'Jeep',
			'Jinbei',
			'Kia',
			'Koenigsegg',
			'Lada',
			'Lamborghini',
			'Lancia',
			'Land Rover',
			'Lexus',
			'Lincoln',
			'Lotus',
			'MG',
			'MINI',
			'Maserati',
			'Maybach',
			'Mazda',
			'McLaren',
			'Mercedes-Benz',
			'Mercury',
			'Mitsubishi',
			'Morgan',
			'Nissan',
			'Opel',
			'Oullim',
			'Pagani',
			'Peugeot',
			'Pontiac',
			'Porsche',
			'Proton',
			'Renault',
			'Rolls Royce',
			'Rover',
			'Saab',
			'Seat',
			'Shenlong/Sunlong',
			'Skoda',
			'Smart',
			'Speranza',
			'Ssang Yong',
			'Subaru',
			'Suzuki',
			'TATA',
			'Toyota',
			'Volkswagen',
			'Volvo',
			'Wiesmann',
			'Other Make' ]

makes.each do |make|
	Make.create!(name: make)
end

