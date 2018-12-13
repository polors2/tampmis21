class SessionController < ApplicationController
  # https://stackoverflow.com/questions/3027149/how-do-i-create-multiple-submit-buttons-for-the-same-form-in-rails
  def new
    render 'new'
    @sale = Sale
  end

  def create
    if params[:commit] == 'Login as Seller'
      user = Seller.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        flash[:success] = 'logged in'
        redirect_to seller_path(user)
      else
        flash.now[:danger] = "tanga amputa"
        render 'new'
      end
    else if params[:commit] == 'Login as Buyer'
      user = Buyer.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        flash[:success] = 'logged in'
        redirect_to buyer_path(user)
      else
        flash.now[:danger] = "tanga amputa"
        render 'new'
      end
    else if params[:commit] == 'Login as Administrator'
      user = Administrator.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        flash[:success] = 'logged in'
        redirect_to admin_url(user)
      else
        flash.now[:danger] = "tanga amputa"
        render 'new'
      end
    end
  end
  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to root_path
  end  end  end  end
