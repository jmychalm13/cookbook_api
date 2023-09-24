class DirectionsController < ApplicationController
  def index
    @directions = Direction.all
    render :index
  end
end
