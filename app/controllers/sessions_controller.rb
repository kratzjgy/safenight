class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def new
  end
  
  def create
    user = User.find_by(:email => params[:email])
    if user && user.authenticate(params[:password])
      log_in user
      # current_user.to_json(:only => [:id])
      render :json => {:id => current_user.id}
      # redirect_to root_url
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  
end
