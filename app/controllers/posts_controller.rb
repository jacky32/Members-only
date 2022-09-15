class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  # before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_url
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(paramds[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def post_params
    params.require(:post).permit(:title)
  end
end
