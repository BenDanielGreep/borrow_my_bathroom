class BathroomsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
      bathrooms.title ILIKE :query \
      OR users.name ILIKE :query \
      "
      @bathrooms = Bathroom.joins(:user).where(sql_query, query: "%#{params[:query]}%")
      # @bathrooms = Bathroom.search_by_title(params[:query]) or

    else
      @bathrooms = Bathroom.all.where.not(latitude: nil, longitude: nil)
      @markers = @bathrooms.geocoded.map do |bathroom|
      {
        lat: bathroom.latitude,
        lng: bathroom.longitude
      }
    end
    end
  end

  def show
    @bathroom = Bathroom.find(params[:id])
    @booking = Booking.new
    @reviews = @bathroom.reviews
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
