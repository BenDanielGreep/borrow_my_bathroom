class BookingsController < ApplicationController

  def new
    @bathroom = Bathroom.find(params[:bathroom_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @bathroom = Bathroom.find(params[:bathroom_id])
    @booking.bathroom = @bathroom
    @booking.user = current_user
    if @booking.save
      redirect_to bathrooms_path
    else
    render :new
    end

  end

  def edit
  
  end

  def update
  
  end

  def destroy
  
  end

  private
  
  def booking_params
  params.require(:booking).permit(:booking_price, :start_time, :end_time)
  end  

end
