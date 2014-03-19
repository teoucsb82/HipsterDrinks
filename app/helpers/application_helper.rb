module ApplicationHelper
	def full_title(page_title)
    base_title = "Hipster Drinks"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

	def authenticate_user
		unless logged_in?
			flash[:warning] = "Please sign in."
			redirect_to new_session_url
		end
	end

end
