class ReviewsController < ApplicationController
  def new
    @bathroom = Bathroom.find(params[:bathroom_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @bathroom = Bathroom.find(params[:bathroom_id])
    @review.user = current_user
    @review.bathroom = @bathroom
    if @review.save
      redirect_to bathroom_path(@bathroom)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
