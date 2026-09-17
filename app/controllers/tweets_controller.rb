class TweetsController < ApplicationController
  
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
   if params[:keyword].present?
    @tweet = Tweet.where('name LIKE ?',"%#{params[:keyword]}%")
   else
    @tweet = Tweet.all
   end
  end

  def new
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
    @reviews = @tweet.reviews.includes(:user).order(created_at: :desc)
    @review = Review.new
  end

  def create
    tweet = Tweet.new(tweet_params)
    if tweet.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :review, :image)
  end
end