User.destroy_all
Game.destroy_all
Idea.destroy_all

guy = User.new user_name: "Ishmaru", email: "adkkg@gmail.com", password: "1234", password_confirmation: "1234"
guy.save

guy2 = User.new user_name: "Raptor", email: "imafakeemail@fake.com", password: "1234", password_confirmation: "1234"
guy2.save

guy3 = User.new user_name: "TrumpLover666", email: "watchtheworldburn@aol.com", password: "1234", password_confirmation: "1234"
guy3.save

girl = User.new email: "lovegames@yahoo.com", password: "1234", password_confirmation: "1234"
girl.save

girl2 = User.new user_name: "Akari", email: "starlet22@hotmail.com", password: "1234", password_confirmation: "1234"
girl2.save

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

idea5 = Idea.new tag: "RPG", summary: "Unlimited RPG Generation Game", description: "I like Pokemon, where I battle with different moves, against endless enemies. I want it to be awesome!"
idea5.user = girl2
idea5.save

idea6 = Idea.new tag: "Action", summary: "Top-Down Shootem up", description: "Supershooter, Eat enemies to absorb their attacks, and shoot them right back!"
idea6.user = guy3
idea6.save

idea7 = Idea.new tag: "Table", summary: "Virtual 52 Pickup! Just click all randomly scattered cards to win!"
idea7.user = guy3
idea7.save

idea8 = Idea.new tag: "Table", summary: "Virtual Tic Tac Toe"
idea8.user = guy3
idea8.save

idea9 = Idea.new tag: "RTS", summary: "We want some steam punk!", description: "Tanks, Rifles, Knights, and Castles. Things you would normally not see in one setting. I wish there were more steam punk style games, especially strategy games!"
idea9.user = girl
idea9.save

idea10 = Idea.new tag: "Action", summary: "One button fighting game", description: "Whenever I play fighting games, all I know is to press every button as fast as I can. Some games I win most I don't. Can you make one thats only one button? "
idea10.user = guy3
idea10.save

idea11 = Idea.new tag: "Action", summary: "First person shooter Chess!", description: "Chess is boring it would be more fun to run around and shoot everything!"
idea11.user = guy2
idea11.save

idea12 = Idea.new tag: "Simulation", summary: "Music as a game", description: "I want to see a game thats about generating experences through sound effects"
idea12.user = girl2
idea12.save

idea13 = Idea.new tag: "Simulation", summary: "The daily life of a Garbage Man", description: "I want a releastic representation of the life of a sanitation worker, working his way up the corperate ladder."
idea13.user = guy3
idea13.save

idea14 = Idea.new tag: "Action", summary: "Make Half Life 3", description: "We have waited long enough Valve, if your not going to do it sombody should!"
idea14.user = guy3
idea14.save

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

game4 = Game.new title: "Brave_Battle_Arena", summary: "Unlimited RPG Battle Arena", description: "Assume the role of Akari, a powerful sorceress, as she tackles the trials of the Dark Labyrinth in hopes of fame and riches. This is a class JRPG combat style game, where you and your opponent trade turns using distinct skills till one succeeds, and spoils are taken. This game continues so long as Akari is alive. (Health > 0)", url: "http://ishmaru.github.io/Brave-Battle-Quest/", media: "https://raw.githubusercontent.com/Ishmaru/Brave-Battle-Quest/master/art/bbascreen1.png"
game4.user = guy2
game4.idea = idea5
game4.save

game5 = Game.new title: "Chasm", summary: "Steam Punk RTS!", description: "Steam Punk RTS 2 Full factions! Style is a mix of victorian archutecture, industrial age uniforms, WW2 Tanks, and fantasy airships!", url: "http://annexconquer.com/chasm-announcement/", media: "http://media.moddb.com/images/members/1/487/486330/screen546.jpg"
game5.user = guy
game5.idea = idea9
game5.save
