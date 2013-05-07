class ApplicationController < ActionController::Base
  protect_from_forgery
  
  around_filter :scope_current_account

  def social_nav
    Nav.where(:identifier => 'social').first
  end
  helper_method :social_nav
  
  def current_account
    @current_account = Account.find_by(:token => 'sshomesincorporated')
  end
  helper_method :current_account
  
  def scope_current_account
    Account.current_id = current_account.id
    yield
  ensure
    Account.current_id = nil
  end
end