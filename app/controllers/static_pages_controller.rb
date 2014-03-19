class StaticPagesController < ApplicationController
	def home
		# TestMailer.test.deliver
		render :home
	end
end
