class UsersController < ApplicationController 
  def index 
    users = User.all
    render json: users
  end 

  def create 
    user = User.new(params.require(:user).permit(:username))
    # replace the `user_attributes_here` with the actual attribute keys
    # user.save!
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end 

  def show 
    render json: params 
  end 

  def update 
    user = User.find(params[:id]) 

    if user.update(params.require(:user).permit(:username)) 
      render json: user 
    else 
      render json: user.errors.full_messages, status: :unprocessable_entity 
    end 
  end 

  def destroy 
    user = User.find(params[:id]) 

    if user.destroy 
      user.destroy 
      render json: user 
    else 
      render json: user.errors.full_messages, status: :unprocessable_entity 
    end 
  end 
end 
