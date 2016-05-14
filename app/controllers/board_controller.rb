class BoardController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @new_post = Post.new(title: params[:title], content: params[:content])
    @new_post.save
    redirect_to :back
  end
  
  def comment_create
    @comment = Comment.new(post_id: params[:post_id], content: params[:content])
    @comment.save
    redirect_to :back
  end

  def new
  end

  def edit
  end

  def destroy
    @one_posts = Post.find(params[:post_id])
    @one_posts.destroy
    redirect_to :back
  end
end
