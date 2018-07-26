Ruby on Rails database - BLOG

Ruby version: 2.5.1

How to install and test?

Download or clone the repository

$ git clone https://github.com/AniMoure/blog
Run the command bundle install to install the necessary gems

$ bundle install
Update your database structure with the migration command.The database in not uploaded to github, so it is necessary tu run the differents migrations:

$ rails db:migrate
Add data into your database with the seed file:

$ rails db:seed
Open the rails consol with rails consol command and check if datas have been created by using the following command:

User.all Article.all Category.all Comment.all Like.all
Database structure:

5 tables:

users
articles
categories
likes
comments
