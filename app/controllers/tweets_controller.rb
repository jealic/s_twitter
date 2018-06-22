class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      flash[:notice] = "You've updated with a tweet."
      redirect_to tweets_path
    else
      @tweets = Tweet.all
      render :index
    end
  end


  private

  def tweet_params
    params.require(:tweet).permit(:description, :user_id)
  end

end
