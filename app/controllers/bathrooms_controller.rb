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
    # TODO: Complete this action
    if @bathroom.save
      redirect_to bathroom_path(@bathroom)
    else
      render :new
    end
  end

  def edit
    @bathroom = Bathroom.find(params[:id])
    # We just need to find the bathroom to populate the form
  end

  def update
    @bathroom = Bathroom.find(params[:id])
    if
      @bathroom.update(bathroom_params)
      redirect_to bathroom_path(@bathroom)
    else
      render :new
      # TODO: Complete this action...if etc
    end
  end

  def destroy
    @bathroom = Bathroom.find(params[:id])
    @bathroom.destroy
    redirect_to bathrooms_path
  end

  private

  def bathroom_params
    params.require(:bathroom).permit(:title, :address, :description, :price)
  end
end
