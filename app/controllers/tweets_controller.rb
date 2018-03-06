class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:smaspi).order("created_at desc").all
  end 

  def new
  end

  def create
    @smaspi = Smaspi.random_find
    @tweet = @smaspi.tweets.new(content: params[:content])
    @tweet.save
  end 

  def method
    @left_name = "ユーザー"
    @left_image_path = "/image/human.png"
    @right_name = "Alexa"
    @right_image_path = "home_title"

  end 

end
