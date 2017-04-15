
(1..100).each do |i|
Home.create!(address: "#{i} Main St",
		city: "Boston",
		state: "MA",
		price: i * 100000,
		description: "It is a good house",
		zipcode: '665544',
		user_id: 1
	    )
end
