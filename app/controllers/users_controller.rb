class UsersController < ApplicationController
  def index
  	if user_signed_in? && current_user.role == 'admin'
  		@users = User.where('role !=?', 'admin')
  	else
  		flash[:alert] = "Access Denied!"
  		redirect_to root_path
  	end
  end

  def show
  	if user_signed_in? && current_user.role == 'admin'
  		@user = User.find(params[:id])
  	else
  		flash[:alert] = "Access Denied!"
  		redirect_to root_path
  	end
  end
  def destroy
  	@user = User.find(params[:id])
  	if @user.destroy!
  		flash[:notice] = "User Deleted Successfully"
  		redirect_to users_path
  	end
  	
  end

  private
  	def user_params
  		params.require(:user).permit(:email, :password, :current_password, :password_confirmation, :name, :id) 
  	end
end
