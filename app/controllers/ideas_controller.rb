class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new (idea_params)
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

  private
    def idea_params
      params.require(:idea).permit(:tag, :summary, :description)
    end

end
