# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'factory_bot_rails'

	def perform
		destroy
		create_users
		create_posts
		create_groups
	end	

	def destroy
	  Group.destroy_all
	  Post.destroy_all
	  User.destroy_all
	  p "all destroy "
	end

	def create_users
		20.times do
			FactoryBot.create(:user)
		end
		puts "User Seed Done!"
	end

	def create_posts
		10.times do
			FactoryBot.create(:post) 
		end
		puts "Post Seed Done!"
	end
	
	def create_groups
		5.times do
			FactoryBot.create(:group)
		end
		puts "Group Seed Done!"
	end



	perform