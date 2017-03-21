# Indie Think Tank!

#### Find it here:
https://whispering-dusk-51539.herokuapp.com/

## The Idea:
__Have a awesome game idea? Post it here!
Are you a game developer looking for something to do? Check out our Ideas, and share with the community!
Its that simple.__

A common practice for developers to do Game a month projects. One month to make a completed project. This homes their skill, and gives them opportunity to experiment outside what they are used to making, without loosing much time.
I remember having many dreams of game ideas, characters, plots but no ability to create them. Wishing I knew someone who could. Now you can!
Just submit your idea and a dev working on a game a month project may like to work on that. And will upload the result here.

<iframe src="https://drive.google.com/file/d/0B3PzzLC9kOUFV0E1ZkJ1QjIxYVE/preview" width="640" height="330"></iframe>

## Development: 

#### Trello Planning:
https://trello.com/b/5NLOupcn/indie-think-tank

#### Languages:
* Ruby on Rails
* HTML
* CSS
* Javascript (rails behind the scenes)

#### Frameworks:
* Bootstrap
* SASS (Included with Rails)
* jQuery (Included with Rails)

## Process/Retrospective
First full stack development project. Luckily, thanks to all the repetition of the course and Rails convention over customization, this project came without many big issues. Smaller issues were easily identified and fixed. Setting up my models/resources/controllers was pretty easy, though repetitive, for most of the week. 

#### Tables/Relationships
The relationships were straightforward, only One to Many relationships (in MVP).

Users Has many Ideas
Users Has many Games
Ideas has Many Games

The complexity started to rise when I had to nest resources. I can only make a game through an Idea, meaning a game has to belong to a Idea. However, that Game also has to belong to the user who generated it.

#### So what seems logical:
User < Idea < Games

#### HOWEVER!

User < Idea =/= User < Game

With that I had to decide, weather or not nest Games under Ideas or Under Users.

While Users is the natural choice, I figured that I can only make a game via a user who is logged in, it would be "easier" to just assign the foreign key of the current user, and nest the game under Ideas, than to write a logic to find the Idea that I navigated AWAY from. (since new game is a separate route) Also nested forms wouldn't make sense form either a User or from and Idea. So games was nested under ideas.

Idea.game.new worked great, until I tried to used the current_user method (created from when I set up my sessions) to 'force' the user id into the new game before it POST.

#### Git Hub Issue #2

https://github.com/Ishmaru/indie_think_tank/issues/2

![](https://cloud.githubusercontent.com/assets/18603064/15897277/c1f42328-2d48-11e6-896b-3ad40968e5c1.png)


So session[:user_id] returns an FixNum (integer) while current_user returns the user object.
and sessions was not available to the controller anyways.

The other main complex issue was creating a sort definition to sort tables of games and ideas.
With some research and help from Stephanie I found a way to use the .order method by passing params with links. I edited my index definition with a IF statement that process query params and sorts accordingly.

However, this fell apart when I added a Like table. Like is essentially a join table so a user can like an idea, and limit like to one. With the help of Jim, adding and displaying Likes worked no problem, I wanted to add a __Sort by Popularity__ link. .order was insufficient. I needed a method that I can pass both the idea (to sort) and idea.like.count to process the how many likes belong to that idea. The .sort_by method allowed me to do that. Thanks Jim!

## Cleaning my code up:

#### Partials
I tried to dry up my code with use of Partials, I have form partials, a navbar partial, even partials for buttons with hide/show logic, that appear several times in my app. (ex Add Idea and Make this A Game) I also have a partial to render lists of games and ideas, where you can pass in values of how many to render via the respective resource controller. On top of that my Sorting buttons are also partials.

#### Commenting
I normally like to comment my code. However, since rails convention are pretty set in stone I didn't feel the need to comment too much, aside from specific methods that are more unique in my code.

## Styles

Ha Ha either you love it or hate it. I wanted it to be loud and playful, and stick to the retro 90's - to the early 2000's vibes so important to the indie game movement. So Pixelated backgrounds, dark colors, and bright neon "hacker terminal" themed text. Bright green text and borders. Add layers of transparent backgrounds for a more 3D look. I tried my best to stay away from a myspace themed app, though very tempting.

![](http://www.blogodisea.com/wp-content/uploads/2009/11/simpson-homer-mister-x-imagen.jpg)


## Special Thanks:
#### General Assembly
* Jim Clark
* Phil Hughes
* Ezra Raez
* Everyone form Class: Wdi-Down Town LA 10!

#### Family
* Marina Delpha
* JP Candelier
* Sue Li

