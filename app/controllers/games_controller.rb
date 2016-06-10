class GamesController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def index
    # sorts index by params passed in url see _sort.html
    # No likes for games so .order was sufficient for all
    @sort_by = params[:sort_by]
    if @sort_by == 'tag'
      @games = Game.order(:idea_id)
    elsif @sort_by == 'new'
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
    @game = Game.new
  end

  def create
    @idea = Idea.find(params[:idea_id])
    @game = Game.new (game_params)
    @game.idea = @idea
    @game.user = current_user
    if @game.save
      flash[:notice] = "Game added"
      redirect_to idea_game_path(@idea, @game)
    else
      render 'new'
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
