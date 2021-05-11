class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.all
  end

  def show
    @bathroom = Bathroom.find(params[:id])
  end

  def new
    @bathroom = Bathroom.new
  end

  def create
    @bathroom = Bathroom.new(bathroom_params)
  end

  def edit
    @bathroom = Bathroom.find(params[:id])
  end

  def update

  end

  def destroy
    @bathroom = Bathroom.find(params[:id])
    @bathroom.destroy
  end

  private

  def bathroom_params
    params.require(:bathroom).permit(:title, :address, :description, :price)
  end
end
