class UsersController < ApplicationController
	public
  def index
  end

  def new
  end

  def create
  	@user = User.new(chores_params)

  	if @user.save
  		redirect_to 
  	end
  end

  private

  def chores_params
  	params.require(:user).permit(:name)
  end
end
