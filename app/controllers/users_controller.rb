class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to root_path
    else
      render 'new'
      
    end
  end
  
  def show
    @user = User.find(params[:id])
    @contacts = @user.contacts
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
    @user = User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    render :index
  end
  
  private
  
  def user_params
    params.require(:user).permit(:f_name, :l_name, :email, :password)
  end
  
end
