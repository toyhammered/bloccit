include RandomData

# Create Posts
50.times do

	Post.create!(
			title: RandomData.random_sentence,
			body: RandomData.random_paragraph
		)
end
posts = Post.all


# Create Comments
100.times do
	Comment.create!(
			post: posts.sample,
			body: RandomData.random_paragraph
		)
end

50.times do
	Advertisement.create!(
		title: RandomData.random_sentence,
		copy: RandomData.random_word,
		price: RandomData.random_number
		)
end

puts "Seeding Finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} advertisements created"