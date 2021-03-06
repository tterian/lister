# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

User.create!(name: 					"Example User",
			 email: 				"kimjong@un.org",
			 password: 				"interview",
			 password_confirmation: "interview",
			 admin: 				true,
			 activated: 			true,
			 activated_at: 			Time.zone.now)

20.times do |n|
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

puts "Importing car makes..."
CSV.foreach(Rails.root.join("makes.csv"), headers: true) do |row|
	Make.create! do |make|
    	make.id = row[0]
    	make.name = row[1]
  	end
end

puts "Importing make models..."
CSV.foreach(Rails.root.join("models.csv"), headers: true) do |row|
	Model.create! do |model|
    	model.make_id = row[1]
    	model.name = row[2]
  	end
end


#puts "Creating cars..."
#users = User.all
#40.times do
#	make_id = rand(1..40)
#	model_id = rand(1..400)
#	year = rand(1990..2014)
#	mileage = rand(100000..200000)
#	price = rand(10000..30000)
#	note = Faker::Lorem.sentence(5)
#	users.each do |user|
#		user.cars.create!(make_id: make_id, model_id: model_id, price: price, year: year, note: note)
#	end
#end


