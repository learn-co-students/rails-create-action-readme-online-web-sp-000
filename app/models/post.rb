class Post < ActiveRecord::Base
    def create
        post = Post.new
        post.title = params[:title]
        post.description = params[:description]
        post.save
    end

end