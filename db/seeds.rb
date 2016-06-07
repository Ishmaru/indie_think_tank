User.destroy_all
Game.destroy_all
Idea.destroy_all

guy = User.new user_name: "Ishmaru", email: "adkkg@gmail.com", password: "1234", password_confirmation: "1234"
guy.save

girl = User.new email: "lovegames@yahoo.com", password: "1234", password_confirmation: "1234"
girl.save

idea1 = Idea.new tag: "Action", summary: "Mario like Platformer", description: "A platformer with a bird character, can double jump to fly for short distances. Poops on enemies to destroy them."
idea1.user = girl
idea1.save

idea2 = Idea.new tag: "RPG", summary: "FF Clone", description: "Randomly generated Dungeon crawler with random npcs"
idea2.user = guy
idea2.save

idea3 = Idea.new tag: "RTS", summary: "Command and Conquer like game.", description: "Fast paced strategy game, allows for big armies very quickly. Less focus on Resource management and base building."
idea3.user = girl
idea3.save

game1 = Game.new title: "Annex: Conquer the World", summary: "Annex is a fast paced RTS game with Anime themed characters.", description: "Annex: Conquer the World is a MegaGlest based Indie Game that brings fast paced combat with a diverse arsenal. Play as one of four factions: The East Ocean Alliance, the NEO Republic, the Shadow Organization, or the Renegades as they struggle for dominance all over the world, competeing for a priceless red mineral. The mod will contain 4 factions, over 30 tech trees, original maps, and tileset. Built using open source RTS MegaGlest The focus of the mod is Multiplayer and Single Player skirmishes. Currently, no plans are in place for campaigns or story mode, however this may change once base game is complete.",url: "http://www.annexconquer.com", media: "none"
game1.user = guy
game1.idea = idea3
game1.save
