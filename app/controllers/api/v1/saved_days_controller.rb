class Api::V1::SavedDaysController < ApplicationController
  respond_to :json
    
  def index
    saved_days = current_user.saved_days
    
    render json: saved_days, each_serializer: SavedDaySerializer
  end
end