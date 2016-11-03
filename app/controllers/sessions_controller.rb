class SessionsController < Devise::SessionsController
  protected
  
  def after_sign_in_path_for(resource_or_scope)
    ENV["API_URL"]
  end
  
end
