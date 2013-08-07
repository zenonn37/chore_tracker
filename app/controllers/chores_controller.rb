class ChoresController < ApplicationController
  def index

  	render('list')
  end


  def list
  	@chore = Chore.all
  end


  def new
  	@chore = Chore.new
  end


  def create
  	@chore = Chore.new(params[:chore].permit(:name,:summary))

  		if @chore.save
         redirect_to chores_path
  		else

         redirect_to chores_path
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
