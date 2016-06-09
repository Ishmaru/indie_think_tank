class HomeController < ApplicationController

  def index
    # limit number of shown instances
    @game = Game.first
    @games = Game.last(3)
    @ideas = Idea.first(6)
  end

  def about
  end

end
