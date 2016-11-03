class Api::V1::SessionsController < Devise::SessionsController
  respond_to :json

  def destroy
  end
end