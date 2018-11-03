class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
  end
  
  def new
  end
  
  def show
    users = User.all.each
    userarr = users.collect{ |a| a }
    render :json => { :users => userarr }
  end
  
  def create
    user = User.new(user_params)
    if user.email == User.where(:email)
      redirect_to :root
    else
      user.save
    end
    
    redirect_to :root
  end
  
  def update
    user = User.find(params[:id])
    user.longitude = params[:longitude]
    user.lat = params[:lat]
    user.save
  end
  
  private
  
  def user_params
      params.permit(User::PERMITS)
  end
end
