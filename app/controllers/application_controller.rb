class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :social_nav

  def social_nav
    Nav.where(:identifier => 'social').first
  end
end