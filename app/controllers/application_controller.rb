class ApplicationController < ActionController::Base
  # helper_method :current_buyer, :buyer_in?
  # helper_method :current_seller, :seller_in?
  # helper_method :current_admin, :admin_in?
  # def current_buyer
  #   @current_buyer ||= Buyer.find(session[:user_id]) if session[:user_id]
  # end
  # def current_seller
  #   @current_seller ||= Seller.find(session[:user_id]) if session[:user_id]
  # end
  # def current_admin
  #   @current_admin ||= Administrator.find(session[:user_id]) if session[:user_id]
  # end
  #
  # def buyer_in?
  #   !!current_buyer
  # end
  # def seller_in?
  #   !!current_seller
  # end
  # def admin_in?
  #   !!current_admin
  # end
# def require_user
#   if !buyer_in?
#       flash[:danger] = 'You gotta login brah'
#       redirect_to login_path
#     end
# end
end
