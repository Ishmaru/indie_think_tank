User.destroy_all

guy = User.new user_name: "Ishmaru", email: "adkkg@gmail.com", password: "1234", password_confirmation: "1234"
guy.save

girl = User.new email: "lovegames@yahoo.com", password: "1234", password_confirmation: "1234"
girl.save
