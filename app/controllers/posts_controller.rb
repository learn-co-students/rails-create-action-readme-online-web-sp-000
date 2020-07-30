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
  @post = Post.new
  @post.title = params[:title]
  @post.description = params[:description]
  @post.save
  redirect_to post_path(@post) #convention of redirecting to a new show page 
end

end

# Save method inserts new record into the database. This is what the create method is doing.
# bundle exec rails console
# post = Post.new
# post.title = "Title Goes Here"
# post.description = "Desc goes here..."
# post.save
