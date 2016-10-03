class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :show, :update]

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
    end
  end


  def edit
  end


  def index
    @user = User.order(name: :asc)
  end


  def login
    @user = User.find(params[:username,:password])
  end

  def new
    @user = User.new
  end


  def show

  end


  def update
    @user.update(user_params)
    redirect_to @user
  end

protected

  def find_user
    @user = User.find(params[:id])
  end


  def user_params
    params[:user].permit(:id,:username,:password,:email)
  end
end
