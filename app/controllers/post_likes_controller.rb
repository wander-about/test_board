class PostLikesController < ApplicationController
	# REVIEW : 3
	before_action :authenticate_user!, only: [:create]
	def create
		post = Post.find(params[:id])
		post_like = PostLike.find_by(post_id: post.id, user_id: current_user.id)

		if post_like.present?
			post_like.destroy
		else
			PostLike.create(post_id: post.id, user_id: current_user.id)
		end

		redirect_back(fallback_location: root_path)
	end
end
