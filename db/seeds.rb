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

idea4 = Idea.new tag: "Action", summary: "Classic Arena Shooter", description: "Bullet hell game with an arena style gameplay. Create a character, and play against similar characters in a tight closed level. Increased intensity with bouncing bullets scattering everewhere! THAT BE SOO COOL!!"
idea4.user = guy
idea4.save

game1 = Game.new title: "Annex: Conquer the World", summary: "Annex is a fast paced RTS game with Anime themed characters.", description: "Annex: Conquer the World is a MegaGlest based Indie Game that brings fast paced combat with a diverse arsenal. Play as one of four factions: The East Ocean Alliance, the NEO Republic, the Shadow Organization, or the Renegades as they struggle for dominance all over the world, competeing for a priceless red mineral. The mod will contain 4 factions, over 30 tech trees, original maps, and tileset. Built using open source RTS MegaGlest The focus of the mod is Multiplayer and Single Player skirmishes. Currently, no plans are in place for campaigns or story mode, however this may change once base game is complete.", url: "http://www.annexconquer.com", media: "http://media.indiedb.com/images/games/1/9/8080/Annex_Screen_4.png"
game1.user = guy
game1.idea = idea3
game1.save

game2 = Game.new title: "Super Ricochet Arena", summary: "Intense Shooting gallery, doge thousands of bullets to stay alive!", description: "Super Ricochet Arena is a fast paced top down arena game with unique mechanic where all bullets 'ricochet' off walls which allows for some strategic shooting. There are two main modes: Deathmatch and Endurance, each with 7 maps and a extra practice mode. You can also customize your player character with various Head, Leg, and Torso options. Ricochet is designed to give a quick challenge for players who has just a few minutes to spare.", url: "http://www.desura.com/games/ricochet-arena", media: "http://d2oah9q9xdinv5.cloudfront.net/cache/images/games/1/22/21726/crop_800x600/kestrel2.jpg"
game2.user = girl
game2.idea = idea4
game2.save

game3 = Game.new title: "Assault Command", summary: "Assault Command is a fast paced RTS experience. With some unique features.", url: "https://github.com/Ishmaru/Assault-Command-Mod-for-MG", media: "https://raw.githubusercontent.com/Ishmaru/Assault-Command-Mod-for-MG/master/assault_command_techtree.png"
game3.user = guy
game3.idea = idea3
game3.save
