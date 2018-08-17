class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user
    @review.author = current_user
    if @review.save
      redirect_to profile_path(@user)
    else
      render 'reviews/new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
