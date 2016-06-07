class GamesController < ApplicationController
  before_action :authorize, except: [:index, :show]
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @user  = @game.user
    @idea  = @game.idea
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new (game_params)
    if @game.save
      flash[:notice] = "Game added"
      redirect_to game_path(@game)
    else
      render 'new'
      # errors.add ("Cannot add user")
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update_attributes(game_params)
      flash[:notice] = "Updated Game!"
      redirect_to game_path(@game)
    else
      render 'edit'
      # errors.add ("Cannot update user")
    end
  end

 def destroy
    @game = Game.find(params[:id])
    @game.destroy
    flash[:notice] = "Game Removed."
    redirect_to root_path
  end

  private
    def game_params
      params.require(:game).permit(:title, :summary, :description, :url, :media)
    end

end
