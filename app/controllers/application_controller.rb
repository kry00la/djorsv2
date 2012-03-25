class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
 
  def current_package
    Package.find(session[:package_id])
  end
end
