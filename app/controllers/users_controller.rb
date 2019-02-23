class UsersController < ApplicationController
  
  before_action :move_to_index, except: [:index, :show]

  def index
    # if current_user.id
    @users = User.all
    
    # end
  end

  def show
    @user = User.find(params[:id])
    @relationship = Relationship.new
  end
  
  def login
  end

  # def following
  #   @user  = User.find(params[:id])
  #   @users = @user.following
  #   render 'show_follow'
  # end

  # def followers
  #   @user  = User.find(params[:id])
  #   @users = @user.followers
  #   render 'show_follower'
  # end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
end