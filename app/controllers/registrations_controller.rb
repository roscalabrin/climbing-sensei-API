class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    'http://localhost:3000/my-account'
  end
end
