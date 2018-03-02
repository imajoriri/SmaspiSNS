class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:smaspi).all
  end 

  def new
  end

  def create
    @smaspi = Smaspi.random_find
    @tweet = @smaspi.tweets.new(content: params[:content])
    @tweet.save
  end 

end
