class RedirectsController < ApplicationController

  def index
    Redirect.create_by_type(params)
    if params[:type] == "twitter"
      redirect_to "https://twitter.com/imasirooo"
    elsif params[:type] == "facebook"
      redirect_to "https://www.facebook.com/profile.php?id=100005473547437"
    elsif params[:type] == "instagram"
      redirect_to "https://www.instagram.com/imajotjyk1/?hl=ja"
    end 
  end 

end
