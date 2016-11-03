class HomeController < ApplicationController
  def index
    redirect_to ENV["API_URL"] if current_user
  end
end
