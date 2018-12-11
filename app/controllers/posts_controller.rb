class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new.tap do |p|
      p.title = params[:title]
      p.description = params[:description]
    end
    @post.save
    redirect_to post_path(@post)
  end
end
