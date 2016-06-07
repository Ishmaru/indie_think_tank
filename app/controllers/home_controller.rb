class HomeController < ApplicationController

  def index
    @games = Game.all
    @ideas = Idea.all
  end

  def about
  end

end
