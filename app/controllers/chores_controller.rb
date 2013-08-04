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
  	@chores = Chore.new(params[:chores])

  		if @chores.save

  		else


  		end
  end

  def show
  end

  def destroy
  end

  def update

  	@chores = Chore.find(params[:id])
  	if @chores.update_attributes(params[:chores])
  	else
  		redirect_to list_path
  	end
  end
end
