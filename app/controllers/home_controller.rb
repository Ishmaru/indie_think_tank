class HomeController < ApplicationController

  def index
    # Select a random game for jumbotron
    @game = Game.offset(rand(Game.count)).first
    # limit number of shown instances
    @games = Game.last(3)
    @ideas = Idea.first(6)
  end

  def about
  end

end
