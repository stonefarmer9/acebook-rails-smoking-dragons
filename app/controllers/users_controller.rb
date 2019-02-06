# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[edit update show]
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # @posts = Post.all.select{|p| p.user_id == @user.id }
  end

  def create
    @user = User.new(user_params)
    # @wall = Wall.new
    if @user.save
      log_in @user
      redirect_to user_wall_path(@user.id, @user.id)
    else
      @user.errors.full_messages.to_s
      render 'new'
    end
  end

  private

  def user_params
    params.require(:users).permit(:username, :email, :password)
  end

  def logged_in_user
    return if logged_in?

    flash[:danger] = 'Please log in.'
    redirect_to login_url
  end
end
