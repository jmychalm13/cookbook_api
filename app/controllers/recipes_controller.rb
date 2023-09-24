class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render :index
  end

  def create
    @recipe = Recipe.create(
      user_id: params[:user_id],
      name: params[:name],
      chef: params[:chef],
      prep_time: params[:prep_time],
      cook_time: params[:cook_time],
      temperature: params[:temperature]
    )

    render :show
  end

  def show
    @recipe = Recipe.find(params[:id])
    render :show
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(
      name: params[:name] || @recipe.name,
      chef: params[:chef] || @recipe.chef,
      prep_time: params[:prep_time] || @recipe.prep_time,
      cook_time: params[:cook_time] || @recipe.cook_time,
      temperature: params[:temperature] || @recipe.temperature,
    )
    render :show
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render json: { message: "Recipe has been destroyed!" }
  end

end
