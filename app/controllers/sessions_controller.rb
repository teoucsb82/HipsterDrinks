class SessionsController < ApplicationController
	
	def new
		@user = User.new
		render :new
	end

  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

		if @user.nil?
			flash.now[:errors] = ["Invalid login/password"]
			render :new
		else
			self.current_user = @user
			redirect_to root_url
		end	
	end

	def destroy
		logout!
		redirect_to new_session_url
	end
	
end
