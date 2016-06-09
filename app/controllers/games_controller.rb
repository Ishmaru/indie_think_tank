class GamesController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def index
    @sort_by = params[:sort_by]
    if @sort_by == 'tag'
      @games = Game.order(:idea_id)
    elsif @sort_by == 'old'
      @games = Game.order(created_at: :desc)
    else
      @games = Game.order(:created_at)
    end
  end

  def show
    @game = Game.find(params[:id])
    @user  = @game.user
    @idea  = @game.idea
  end

  def new
    @idea = Idea.find(params[:idea_id])
    @game = @idea.games.new
  end

  def create
    @idea = Idea.find(params[:idea_id])
    @game = @idea.games.new (game_params)
    @game.user = current_user
    if @game.save
      flash[:notice] = "Game added"
      redirect_to idea_game_path(@idea, @game)
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
