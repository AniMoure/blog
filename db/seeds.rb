# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# crée 5 categories en BDDs

5.times do 
	category = Category.create(name: Faker::Cat.name)
end

# crée 10 articles en BDDs

10.times do 
	new_user = User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email
	)
	
	article = Article.create(
		title: Faker::ChuckNorris.fact,
		content: Faker::HarryPotter.book,
		user_id: new_user.id,
		category_id: rand((Category.first.id)..(Category.last.id))
	)
end

# crée 15 commentaires en BDDs

15.times do 
	commentaire = Comment.create(
		content: Faker::MostInterestingManInTheWorld.quote,
		article_id: rand((Article.first.id)..(Article.last.id)),
		user_id: rand((User.first.id)..(User.last.id))
	)
end

# crée 15 likes en BDDs

15.times do 
	like = Like.create(
		user_id: rand((User.first.id)..(User.last.id)),
		article_id: rand((Article.first.id)..(Article.last.id))
		)
end