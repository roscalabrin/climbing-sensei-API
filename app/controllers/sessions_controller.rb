class SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource_or_scope)
    "http://localhost:3000/my-account"
  end
end
