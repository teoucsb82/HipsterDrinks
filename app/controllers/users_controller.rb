class UsersController < ApplicationController

	def new
		@user = User.new
		render :new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			self.current_user = @user
		  flash[:success] = "Welcome to Hipster Drinks!"
			redirect_to @user
		else
			flash.now[:danger] = @user.errors.full_messages
			render :new
		end
	end

	def show
		get_user
		render :show
	end

	private
	def user_params
		params.require(:user).permit(:email, :password, :session_token)
	end

	def get_user
		@user = User.find(params[:id])
	end

end
