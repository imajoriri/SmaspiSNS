class Api::V1::TestUsersController < Api::V1::ApiController
  #before_action :doorkeeper_authorize!
  #respond_to :json

  def me
    #respond_with current_resource_owner
    #TempUser.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    #doorkeeper_token = "71cfd9279c682cee044f902f5dea293d8fa930fb7b828a48197dca3aac723eb4"
    @temp_user = TempUser.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    if @temp_user
      render json: {test: :not}
    else 
      render json: {test: doorkeeper_token}
    end
  end
end
