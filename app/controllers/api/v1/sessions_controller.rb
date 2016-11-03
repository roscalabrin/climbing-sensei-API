class Api::V1::SessionsController < ApplicationController
  respond_to :json

  def destroy
    require "pry"
    binding.pry
  end
end