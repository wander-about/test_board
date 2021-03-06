class CommentsController < ApplicationController
  # REVIEW : 1
  def create
		post = Post.find(params[:id])

    comment = Comment.new
    comment.body = params[:body]
    # REVIEW : 3
    comment.post_id = post.id
		comment.user_id = current_user.id

    comment.save

		#comment = Comment.create(body: params[:body], post_id: post.id, user_id: current_user.id)

    #redirect_to request.referrer
    redirect_back(fallback_location: root_path)
  end
end
