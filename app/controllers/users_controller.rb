class UsersController < ApplicationController

before_action :require_signin, except: [:create, :new]


def index
    @users = User.all
end

def show
    @user = User.find(params[:id])
end

def new
    @user = User.new
end

def create
    @user = User.create(user_params)
    if @user.save
        session[:user_id] = @user.id
        redirect_to @user, notice: "Thanks for signing up!"
    else
        render :new, status: :unprocessable_entity
    end
end


def edit
    @user = User.find(params[:id])

end


def update
    @user = User.find(params[:id])
    if @user.update(user_params)
        redirect_to user_path(@user),
        notice: "User Successfully Updated"
    else
        render :edit, status: :unprocessable_entity

    end
end

def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:user_id] = nil
    redirect_to movies_url, status: :see_other,
    alert: "Account Successfully Deleted"

end


private

def user_params
    params.require(:user).
        permit(:name, :email, :password, :password_confirmation)
end

end
