# README

Creating a simple Ruby on Rails application using Devise

1) Creating your application :

	$ rails new Student
	$ cd Student

2) Editing the Gemfile :
	
	gem 'mysql2'

	now make changes in Filepath : config/database.yml

	  adapter: mysql2
	  pool: 5
	  timeout: 5000
	  username: root
	  password: 1234

	development:
	  <<: *default
	  
	  database: mydb

	
	test:
	  <<: *default
	  
	  database: mydb_testing

	production:
	  <<: *default
	  
	  database: mydb

3) bundle install
4) rake db:create

finally we come to our main topic "devise"

5) $ gem 'devise

6) $ rails generate devise:install

Creating Models :

7) $ rails generate devise student

8) $ rake db:migrate

9) rails server

user in http path 
students/sign_up

Here the sign-up form contains only 3 fields email,password & password confirmation,No we have to add the username to the sign-up form.

10) rails generate migration add_username_to_students username:string

11) $ rake db:migrate

Creating Views :

12) $ rails generate devise:views

Once you run this command the devise will generate the whole view files for the students.check “app/views/devise” ,you could see the whole form structure for sign-in,sign-up,forgot password etc.

13) $ rails generate model Profile

14) $ rails generate controller home index

15) app/config/routes.rb

add the line

root 'home#index'

16) rails s 

**************End*************************