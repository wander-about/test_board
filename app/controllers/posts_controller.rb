class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.new

    @post.title = params[:title]
    @post.content = params[:content]
    @post.user_id = current_user.id
    @post.image = params[:image]

    @post.save
    #post = Post.create(title: params[:title], content: params[:content], user_id: current_user.id, image: params[:image])
    byebug
    redirect_to "/posts/#{@post.id}/show"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:title], content: params[:content])

    redirect_to "/posts/#{@post.id}/show"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_back(fallback_location: root_path)
  end
end
