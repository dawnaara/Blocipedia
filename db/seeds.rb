require 'faker'

	20.times do
		User.create!(
			first_name: Faker::Name.first_name,
			last_name: Faker::Name.last_name,
			email: Faker::Internet.email,
			password: Faker::Internet.password(6),
			confirmed_at: Time.now
			)
	end

	users = User.all


	100.times do 
		Wiki.create!(
			title: Faker::Hipster.word,
			body: Faker::Lorem.paragraph, 
			user: users.sample
			)
	end


	puts "#{User.count} users created"
	puts "#{Wiki.count} wikis created"
