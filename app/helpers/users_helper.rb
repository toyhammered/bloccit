module UsersHelper

  def check_user_post
    if @user.posts.any? && @user.comments.any?
      true
    else
      false
    end
  end
end
