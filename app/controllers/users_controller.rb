class UsersController < ApplicationController 
    def new
        @user = User.new
    end 
    def create 
        user = User.create(username: params[:user_name], password: params[:password])
        session[:user_id] = user.id 
        redirect_to root_path
    end 
end 