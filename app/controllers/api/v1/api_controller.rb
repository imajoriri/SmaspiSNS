class Api::V1::ApiController < ApplicationController
  private
  def current_resource_owner
    TempUser.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end
