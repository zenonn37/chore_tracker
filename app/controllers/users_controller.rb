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


def show
  @user = User.find(params[:id])
end

def edit
  @user = User.find(params[:id])
  
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to users_path
  end

def update
  @user = User.find(params[:id])
  if @user.update(user_params)
     redirect_to users_path
   else
    redirect_to edit_user_path
  end

  end



  private

  def user_params
  	params.require(:user).permit(:name,:hours_worked,:is_paid)
  end
end
