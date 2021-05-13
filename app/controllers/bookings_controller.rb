class BookingsController < ApplicationController

  def index
    @booking = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @bathroom = Bathroom.find(params[:bathroom_id])
    @Booking = Booking.new
  end

  def create
    @booking = Booking.new(_params)
    @bathroom = Bathroom.find(params[:bathroom_id])
    @booking.bathroom = @booking
    @booking.save
   
  end

  def edit
  
  end

  def update
  
  end

  def destroy
  
  end

  private
  # params
end
