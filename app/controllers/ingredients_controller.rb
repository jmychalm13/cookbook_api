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

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(
      recipe_id: params[:recipe_id] || @ingredient.recipe_id,
      name: params[:name] || @ingredient.name,
      measurement: params[:measurement] || @ingredient.measurement,
    )
    render :show
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    render :show
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    render json: { message: "Ingredient has been destroyed!" }
  end

end
