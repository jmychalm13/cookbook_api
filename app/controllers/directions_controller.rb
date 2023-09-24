class DirectionsController < ApplicationController
  def index
    @directions = Direction.all
    render :index
  end

  def create
    @direction = Direction.create(
      recipe_id: params[:recipe_id],
      order: params[:order],
      instruction: params[:instruction]
    )
    render :show
  end

  def show
    @direction = Direction.find(params[:id])
    render :show
  end

  def update
    @direction = Direction.find(params[:id])
    @direction.update(
      recipe_id: params[:recipe_id] || @direction.recipe_id,
      order: params[:order] || @direction.order,
      instruction: params[:instruction] || @direction.instruction
    )
    render :show
  end

  def destroy
    @direction = Direction.find(params[:id])
    @direction.destroy
    render json: { message: "Direction has been destroyed!" }
  end
end
