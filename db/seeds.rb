# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
require 'random_data'

50.times do
	Post.create!(
		title:  RandomData.random_sentence,
		body:   RandomData.random_paragraph
	)
end
posts = Post.all

100.times do
	Comment.create!(
		post: posts.sample,
		body: RandomData.random_paragraph
	)
end
=end

post = Post.find_or_create_by!(title: "My Unique Post", body: "My unique post body")
Comment.find_or_create_by!(post: post, body: "My unique comment body")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
