class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(params.require(:recipe).permit(:name, :image)) 
      redirect_to recipes_path
  end

  
  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to recipes_path
  end


  # make the form
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params.require(:recipe).permit(:name, :image)) 
    if @recipe.save
      redirect_to recipes_path
    end
  end
end
end
