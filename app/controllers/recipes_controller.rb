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
end
