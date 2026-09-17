class BookmarksController < ApplicationController
  before_action :authenticate_user!

    def create
     current_user.bookmarks.find_or_create_by(tweet_id: params[:tweet_id])
     redirect_back(fallback_location: root_path)
    end

    def destroy
     current_user.bookmarks.destroy_by(tweet_id: params[:tweet_id])
     redirect_back(fallback_location: root_path)
    end
end
