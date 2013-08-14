class ChoresController < ApplicationController
  def index

  	   @chore = Chore.all
  end


  def list
    @chore = Chore.all
  end


  def new
  	@chore = Chore.new
  end


  def create
    #params[:chore].inspect
    
  	@chore = Chore.new(chore_params)

  		if @chore.save
         redirect_to chores_path
  		else

         render 'new'
  		end


  end

  def show
    @chore = Chore.find(params[:id])
  end

  def destroy
     @chore = Chore.find(params[:id])
     @chore.destroy
     redirect_to root_path
  end

  def update

  	@chores = Chore.find(params[:id])
  	if @chores.update_attributes(chore_params)
        redirect_to root_path 
  	else
  		redirect_to edit_path
  	end

  end

  private

  def chore_params
    params.require(:chore).permit(:name,:summary)
  end

end
