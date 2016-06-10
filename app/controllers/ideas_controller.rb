class IdeasController < ApplicationController
  before_action :authorize, except: [:index, :show]
  def index
    # sorts index by params passed in url see _sort.html
    # sorting by number of likes wasn't possibe with a .order in this fasion so .sort_by{}.reverse was used instead. (thanks Jim)
    @sort_by = params[:sort_by]
    if @sort_by == 'tag'
      @ideas = Idea.order(:tag)
    elsif @sort_by == 'like'
      @ideas = Idea.all.sort_by { |idea| idea.likes.count }.reverse
    elsif @sort_by == 'old'
      @ideas = Idea.order(:created_at)
    else
      @ideas = Idea.order(created_at: :desc)
    end
  end

  def show
    @idea = Idea.find(params[:id])
    @user  = @idea.user
    @games = @idea.games
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new (idea_params)
    @idea.user = current_user
    if @idea.save
      flash[:notice] = "Idea added"
      redirect_to idea_path(@idea)
    else
      render 'new'
    end
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])

    if @idea.update_attributes(idea_params)
      flash[:notice] = "Updated Game!"
      redirect_to idea_path(@idea)
    else
      render 'edit'
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    flash[:notice] = "Idea Removed."
    redirect_to root_path
  end

  def like
    # Instead of creating a full Likes Controller, We'll define a "like" method here, and a small inline if in the ideas show route (thanks Jim)
    @idea = Idea.find(params[:id])
    Like.create(user: current_user, idea: @idea) unless Like.find_by(user: current_user, idea: @idea)
    redirect_to(:back)
  end

  private
    def idea_params
      params.require(:idea).permit(:tag, :summary, :description)
    end
end
