module UsersHelper

  def show_users(obj)
    if @user.send(obj).any?
      output = "<h2>#{obj.to_s.capitalize}</h2>\n"
      output << render(@user.send(obj))
      output.html_safe
    else
      "<p>#{@user.name} has not submitted any #{obj.to_s} yet</p>".html_safe
    end
  end
end
