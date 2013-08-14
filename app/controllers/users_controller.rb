class UsersController < ApplicationController
	public
  def index
  	@user = User.all
  end

  def new
  end

  def create
  	#render text: params[:user].inspect
  	@user = User.new(user_params)

  	if @user.save
  		redirect_to users_path
  	else
  		render 'new'
  	end

  end

  private

  def user_params
  	params.require(:user).permit(:name,:hours_worked,:is_paid)
  end
end
