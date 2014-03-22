class UsersController < ApplicationController
	before_filter :correct_user, :only => [:edit, :update]
	before_filter :admin_user, :only => [:destroy]
  
  def destroy
    get_user
    flash[:success] = "User #{@user.email} deleted."
    @user.destroy
    redirect_to users_url
  end

	def edit
		get_user
		render :edit
	end

	def new
		@user = User.new
		render :new
	end

	def create
		@user = User.new(user_params)
		@user.email.downcase!
		if @user.save
			self.current_user = @user
		  flash[:success] = "Welcome to Hipster Drinks!"
			redirect_to @user
		else
			flash[:danger] = @user.errors.full_messages
			redirect_to new_user_url
		end
	end

	def index
		@users = User.search(params[:search])
		render :index
	end

	def show
		get_user
		render :show
	end

	def update
  	get_user

    if @user.update_attributes(user_params)
      flash[:success] = "Account updated!"
      redirect_to user_url(@user)
    else
    	flash.now[:danger] = @user.errors.full_messages
      render 'edit'
    end
  end
	
  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users#.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers#.paginate(page: params[:page])
    render 'show_follow'
  end

  def favorite_drinks
    @title = "Favorite Drinks"
    @user = User.find(params[:id])
    @drinks = @user.favorite_drinks#.paginate(page: params[:page])
    render 'show_favorites'
  end

	private
	def user_params
		params.require(:user).permit(:email, :password, :session_token, :first_name, :last_name, :about)
	end

	def get_user
		@user = User.find(params[:id])
	end

	def correct_user
		get_user
		unless logged_in? && (current_user == @user || current_user.admin?)
			flash[:danger] = "You cannot edit other users"
			redirect_to root_url
		end
	end

	def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end
