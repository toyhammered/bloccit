include RandomData

# Create a single unique Post

unq_post = Post.find_or_create_by(title: "My First Unique Post!") do |post|
	post.body = "This is now a unique body relating to the title"
end

# Create a single unique Comment

Comment.find_or_create_by(body: "Some awesome comment!") do |comment|
	comment.post_id = unq_post.id
end

# # Create Posts
# 50.times do

# 	Post.create!(
# 			title: RandomData.random_sentence,
# 			body: RandomData.random_paragraph
# 		)
# end
# posts = Post.all


# # Create Comments
# 100.times do
# 	Comment.create!(
# 			post: posts.sample,
# 			body: RandomData.random_paragraph
# 		)
# end

# puts "Seeding Finished"
# puts "#{Post.count} posts created"
# puts "#{Comment.count} comments created"