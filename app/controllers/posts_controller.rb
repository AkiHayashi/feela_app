class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if params[:back]
      render :new
    else
      if @post.save
        redirect_to posts_path, notice: "posted"
      else
        render :new
      end
    end
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end
end

  

