class UsersController < ApplicationController

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
        redirect_to @user, notice: "Success"
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
    redirect_to movies_url, status: :see_other,
    alert: "Account Successfully Deleted"

end


private

def user_params
    params.require(:user).
        permit(:name, :email, :password, :password_confirmation)
end

end
