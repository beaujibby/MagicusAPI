class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.password == (params[:session][:password])
      log_in user
      redirect_to user
    end
  end


  def destroy
  end


  def new
  end

end
