class UsersController < ApplicationController

before_action :require_signin, except: [:create, :new]
before_action :require_correct_user, only: [:edit, :update]



def index
    @users = User.all
end

def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
    @favorite_movies = @user.favorite_movies
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
end


def update
    if @user.update(user_params)
        redirect_to user_path(@user),
        notice: "User Successfully Updated!"
    else
        render :edit, status: :unprocessable_entity

    end
end

def destroy
    @user = User.find_by(params[:id])
    @user.destroy
    redirect_to movies_url, status: :see_other,
        alert: "Account Successfully Deleted!"

end


private

def require_correct_user
    @user = User.find(params[:id])
    redirect_to root_url, status: :see_other unless current_user?(@user)

end

def user_params
    params.require(:user).
        permit(:name, :email, :password, :password_confirmation)
end

end
 #why is my changed not update!
