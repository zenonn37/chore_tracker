class ChoresController < ApplicationController
  def index

  	render('list')
  end


  def list
  	@chores = Chore.all
  end


  def new
  	@chores = Chore.new
  end


  def create
  	@chores = Chore.new(params[:chores].permit(:name,:summary))

  		if @chores.save
         redirect_to chores_path
  		else

         redirect_to new_path
  		end

  end

  def show
  end

  def destroy
  end

  def update

  	@chores = Chore.find(params[:id])
  	if @chores.update_attributes(params[:chores])
        redirect_to root_path 
  	else
  		redirect_to edit_path
  	end

  end

end
