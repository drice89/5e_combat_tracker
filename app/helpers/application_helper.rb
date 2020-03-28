module ApplicationHelper
    def auth_token
        "<input type=\"hidden\" name=\"authenticity_token\" value=\"#{form_authenticity_token}\">".html_safe
    end
    
    def logout_button
       "<form action=\"#{session_url}\" method=\"post\">
            #{auth_token}
            <input type=\"hidden\" name=\"_method\" value=\"delete\">
            <input type=\"submit\" value=\"Log Out\">
            </form>".html_safe
        end
        
end
