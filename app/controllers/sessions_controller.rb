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
    session[:return_to] ||= request.referer
		if @user.nil?
			flash.now[:danger] = "Invalid login credentials"
			render :new
		else
			self.current_user = @user
			flash[:success] = "Welcome back, #{@user.email}!"
			redirect_to session.delete(:return_to)
		end	
	end

	def destroy
		logout!
		redirect_to root_url
	end
	
end
