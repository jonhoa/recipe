class RecipeController < ApplicationController
  def index
    recipe = Cook.all
    render json: recipe.as_json
  end
  def show
    recipe = Cook.find_by(id: params[:id])
    render json: recipe.as_json
  end
  def update
    recipe = Cook.find_by(id: params[:id])
    recipe.name = params[:name]
    recipe.ingredients = params[:ingredients]
    recipe.prep_time = params[:prep_time]
    recipe.instructions = params[:instructions]
    recipe.save
    render json: recipe.as_json
  end
  def destroy
    recipe = Cook.find_by(id: params[:id])
    recipe.delete
    render json: {message: "Recipe deleted"}
  end
  def create
    recipe = Cook.create(
      name: params[:name],
      ingredients: params[:ingredients],
      prep_time: params[:prep_time],
      instructions: params[:instructions]
    )
    render json: recipe.as_json
  end
end

