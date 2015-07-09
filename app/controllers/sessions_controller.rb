class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:email], params[:password])
  	if user
  		session[:user_id] = user.id
  		session[:user_admin] = user.admin
        
  		redirect_to root_url, :notice => "Logged In"
  	else
  		flash.now.alert = "Invalid email or password"
  		render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
    session[:user_admin] = nil
  	redirect_to root_path, :notice => "Logged out!"
  end

end
