class ApplicationController < ActionController::Base
  protect_from_forgery

helper_method :current_user1
  
  private
  def current_user1
    @current_user1 ||= User1.find(session[:user_id]) if session[:user_id]
  end

alias :std_redirect_to :redirect_to
def redirect_to(*args)
   flash.keep
   std_redirect_to *args
end
def after_sign_in_path_for(resource_or_scope)
    new_shop_path
  end

end
