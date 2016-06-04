# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

guy = User.new user_name: "Ishmaru", email: "adkkg@gmail.com", password: "1234", password_confirmation: "1234"
guy.save

girl = User.new email: "lovegames@yahoo.com", password: "1234", password_confirmation: "1234"
girl.save
