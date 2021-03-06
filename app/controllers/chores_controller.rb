class ChoresController < ApplicationController



   #before_filter :get_tweet, only: [:edit, :update, :destroy]
   #before_filter :check_auth, only:[:edit, :update, :destroy]
   before_filter :get_chores, only:[:edit,:update,:destroy]

       # def get_tweet
         #@tweet = Tweet.find(params[:id])
       # end

       #def check_auth
          #if session[:zombie_id] !=@tweet.zombie_id
    #flash[:notice] = "Sorry,you cant edit this tweet"
    #redirect_to(chores_path)
       #end

       private

       def get_chores
        @chore = Chore.find(params[:id])
       end

       public
  def index
       

  	   #@chore = Chore.all
       #@chore = Chore.where(name:'Bathroom')
       #@chore = Chore.find_by()
       #@chore = Chore.find_by("created_at < ?", 2.days.ago)
       #Post.where.not(author:author)
       #User.order(:name,created_at: :desc)
       @chore = Chore.order(created_at: :desc)
       #Post.includes(:comments).
          #where("comments.name='foo'").references(:comments)
          #Post.includes(:comments).where(comments:{ name: 'foo'})
          #Post.includes(:comments).where('comments.name'=>'foo')
          #Post.includes(:comments).order('comments.name')


  end


  def list
    @chore = Chore.all
    #if params[:recent]
      #@tweets = tweets.recent
     # end
  end


  def new
  	@chore = Chore.new
  end


  def create
    #render text: params[:user].inspect
    #Chore.find_or_initialize_by()
     #Chore.find_or_create_by()
    
  	@chore = Chore.new(chore_params)

  		if @chore.save
         redirect_to chores_path
  		else

         render 'new'
  		end


  end

  def show
    @chore = Chore.find(params[:id])
    respond_to do |format|
      format.html #show html.erb
      format.xml { render xml: @chore}
      format.json {render json: @chore}
    end
  end

  def destroy
     @chore = Chore.find(params[:id])
     @chore.destroy
     redirect_to chores_path
  end

  def edit

    @chore = Chore.find(params[:id])
   
    
  end

  def update

  	@chore = Chore.find(params[:id])
  	if @chores.update(chore_params)
      #@chores.update_columns(chore_params)
        redirect_to chores_path 
  	else
  		redirect_to edit_chores_path
  	end

  end

 

  private

  def chore_params
    params.require(:chore).permit(:name,:summary,:user_id)
  end

end
