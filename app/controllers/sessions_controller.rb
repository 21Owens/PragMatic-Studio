class SessionsController < ApplicationController

def new
end

def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to user, notice: "welcome back, #{user.name}!"
  else
    flash.now[:alert] = "Invalid Username or Password!"
    render :new, status: :unprocessable_entity
  end
end

def destroy
 session[:user_id] = nil
 redirect_to movies_path, status: :see_other,
 notice: "You have been signed out!"
end






end
