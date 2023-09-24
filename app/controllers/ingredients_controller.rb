class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    render :index
  end

  def create
    @ingredient = Ingredient.create(
      recipe_id: params[:recipe_id],
      name: params[:name],
      measurement: params[:measurement],
    )
    render :show
  end

end
