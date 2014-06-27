module ApplicationHelper

	def user_logged_in_msg
		str = ''
		if user_signed_in?
			str += " <li >#{link_to('Logout', destroy_user_session_path, :method => :delete)}</li><li><a><span class='badge'>#{current_user.email}</span></a></li>"
		else
			str += "<li>#{link_to('Login', new_user_session_path)} </li> <li> #{link_to('Register', new_user_registration_path)}</li>"
		end

		raw(str)
	end

	def nav_link_to(text, path, class_name = '', parameters = {})
	    if class_name.is_a? Hash
	      parameters = class_name
	      class_name = ''
	    end
	    content_tag :li, class: class_name do
	      link_to text, path, parameters
	    end
    end

end
