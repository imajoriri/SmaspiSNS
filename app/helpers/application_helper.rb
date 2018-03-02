module ApplicationHelper

  # home/indexで、背景画像を用意するためにdivのクラスとして使用
  def is_home_index
    if params[:controller] == "home" and params[:action] == "index"
      return "home_index"
    else
      return ""
    end 
  end

  # home/indexだったら真
  def is_home_index?
    return params[:controller] == "home" && params[:action] == "index"
  end 

end
