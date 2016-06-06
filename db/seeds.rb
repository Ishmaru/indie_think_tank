User.destroy_all
Game.destroy_all
Idea.destroy_all

guy = User.new user_name: "Ishmaru", email: "adkkg@gmail.com", password: "1234", password_confirmation: "1234"
guy.save

girl = User.new email: "lovegames@yahoo.com", password: "1234", password_confirmation: "1234"
girl.save

game1 = Game.new title: "Annex: Conquer the World", summary: "Annex is a fast paced RTS game with Anime themed characters.", url: "http://www.annexconquer.com", media: "none"
game1.save

idea1 = Idea.new tag: "Action", summary: "Mario like Platformer", description: "A platformer with a bird character, can double jump to fly for short distances. Poops on enemies to destroy them."
idea1.save

idea2 = Idea.new tag: "RPG", summary: "FF Clone", description: "Randomly generated Dungeon crawler with random npcs"
idea2.save
