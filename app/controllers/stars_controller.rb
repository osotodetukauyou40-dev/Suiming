class StarsController < ApplicationController
 before_action :authenticate_user!
 before_action :set_tweet
 def create
    @tweet = Tweet.find(params[:tweet_id])
    @star = @tweet.stars.find_or_initialize_by(user_id: current_user.id)
    @star.score = params[:star][:score]
    @star.save

    redirect_back(fallback_location: tweet_path(@tweet))
 end
 alias_method :update, :create

 def destroy
    star = current_user.stars.find_by(id: params[:id])
    star.destroy if star

    redirect_back(fallback_location: tweet_path(@tweet))
 end


 private
  def set_tweet
   @tweet = Tweet.find(params[:tweet_id])
  end
end
