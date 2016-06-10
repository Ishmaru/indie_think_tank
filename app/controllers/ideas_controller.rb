class IdeasController < ApplicationController
  before_action :authorize, except: [:index, :show]
  def index
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
      # errors.add ("Cannot add user")
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
      # errors.add ("Cannot update user")
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    flash[:notice] = "Idea Removed."
    redirect_to root_path
  end

  def like
    @idea = Idea.find(params[:id])
    Like.create(user: current_user, idea: @idea) unless Like.find_by(user: current_user, idea: @idea)
    redirect_to(:back)
  end

  private
    def idea_params
      params.require(:idea).permit(:tag, :summary, :description)
    end
end
