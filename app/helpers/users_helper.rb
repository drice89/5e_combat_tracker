module UsersHelper
    def format_name(user)
        "#{user.fname.capitalize} #{user.lname.capitalize}"
    end
end
