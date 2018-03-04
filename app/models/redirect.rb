class Redirect < ApplicationRecord
  self.inheritance_column = :_type_disabled
  enum type: {twitter: 0, facebook: 1, instagram: 2}

  def self.create_by_type(params)
    redirect = Redirect.new(type: params[:type],
                            controller: params[:controller],
                            action: params[:action])
    redirect.save
    #if params[:type] == "twitter"
    #  Redirect.create(type: :twitter)
    #elsif params[:type] == "facebook"
    #  Redirect.create(type: :facebook)
    #elsif params[:type] == "instagram"
    #  Redirect.create(type: :instagram)
    #end 
  end 


end
