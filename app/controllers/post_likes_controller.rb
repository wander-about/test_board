class PostLikesController < ApplicationController
	before_action :authenticate_user!, only: [:create]
	def create
		post = Post.find(params[:id])
		like = PostLike.find_by(post_id: post.id, user_id: current_user.id)

		if like.present?
			like.destroy
		else
			PostLike.create(post_id: post.id, user_id: current_user.id)
		end

		redirect_back(fallback_location: root_path)
	end
end
