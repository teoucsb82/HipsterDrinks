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

	def sortable(column, title = nil)
		title ||= column.titleize
	  css_class = column == sort_column ? "current #{sort_direction}" : nil
		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
		link_to title, {:sort => column, :direction => direction}, {:class => css_class}
	end

end
