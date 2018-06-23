class Admin::TweetsController < ApplicationController

  before_action :authenticate_user!
  before_action :authenticate_admin
  
  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end
  
  def create
    @tweet = current_user.tweets.new(tweet_params)
    if @tweet.save
      flash[:notice] = "You've updated with a tweet."
      redirect_to admin_tweets_path
    else
      @tweets = Tweet.all
      render :index
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    flash[:alert] = "You've deleted a tweet!"
    redirect_to admin_tweets_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:description)
  end
  
end
