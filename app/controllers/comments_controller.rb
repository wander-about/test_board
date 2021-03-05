class CommentsController < ApplicationController
  def create
    
		post = Post.find(params[:id])

    comment = Comment.new
    comment.body = params[:body]
    comment.post_id = post.id
		comment.user_id = current_user.id

    comment.save

    redirect_to request.referrer
  end
end
