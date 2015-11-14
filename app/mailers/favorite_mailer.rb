class FavoriteMailer < ApplicationMailer
  default from: "daniel@rassiner.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@aqueous-wave-8125.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@aqueous-wave-8125.com>"
    headers["References"] = "<post/#{post.id}@aqueous-wave-8125.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")

  end

  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@aqueous-wave-8125.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@aqueous-wave-8125.com>"
    headers["References"] = "<post/#{post.id}@aqueous-wave-8125.com>"

    @post = post

    mail(to: post.user.email, subject: "You are following, #{post.title}")
  end
end
