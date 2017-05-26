class FavoriteMailer < ApplicationMailer
	default from: "myemailaddress@yopmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@your-app-name.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
    headers["References"] = "<post/#{post.id}@your-app-name.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(post)
    @post = post
    mail(to: post.user.email, subject: "You created a new post #{post.title}")
  end
end
