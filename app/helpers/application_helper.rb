module ApplicationHelper

def sortable(column, title = nil)
  title ||= column.titleize
  css_class = column == sort_column ? "current #{sort_direction}" : nil
  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
  link_to title, {:sort => column, :direction => direction}, {:class => css_class}
end

def signed_in?
       if session[:user_id].nil?
  return
       else
  @current_user = User.find_by_id(session[:user_id])
  @vehicles = @current_user.vehicles
       end
  end
  
def adminsigned_in?
       if session[:admin_id].nil?
  return
       else
  @current_admin = Admin.find_by_id(session[:admin_id])
       end
  end
end
