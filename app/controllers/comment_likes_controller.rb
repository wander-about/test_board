class CommentLikesController < ApplicationController
	# REVIEW : 3
	before_action :authenticate_user!, only: [:create]

	def create
		comment = Comment.find(params[:id])
		comment_like = CommentLike.find_by(comment_id: comment.id, user_id: current_user.id)

		if comment_like.present?
			comment_like.destroy
		else
			CommentLike.create(comment_id: comment.id, user_id: current_user.id)
		end

		redirect_back(fallback_location: root_path)
	end
end
