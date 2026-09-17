class ReviewsController < ApplicationController
 before_action :authenticate_user!
 before_action :set_tweet

  def create
    review = @tweet.reviews.build(review_params.merge(user_id: current_user.id))
    review.save
    redirect_back fallback_location: @tweet
  end

  def edit
    @review = current_user.reviews.find(params[:id])
  end

  def update
    review = current_user.reviews.find(params[:id])
    review.update(review_params) ? redirect_to(@tweet) : render(:edit)
  end

  def destroy
    current_user.reviews.find(params[:id]).destroy
    redirect_back fallback_location: @tweet
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end