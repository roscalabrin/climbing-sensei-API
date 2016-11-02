class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    require "pry";binding.pry
    ENV["API_URL"]
  end
end
