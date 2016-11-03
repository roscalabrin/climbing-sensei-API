class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    ENV["API_URL"]
  end
end
