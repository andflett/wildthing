class PostsController < ApplicationController

  def show
    @post = Post.find_by_slug(params[:id])
  end
  
  def index
    @posts = Post.all
  end

end
