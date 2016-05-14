class HomeController < ApplicationController
  def index
    
  end
  
  def write
    @title = params[:title]
    @content = params[:content]
    
    new_post = Post.new
    new_post.title = @title
    new_post.content = @content
    new_post.save
    
    redirect_to "/list"
  end
  
  def list
    @every_post = Post.all.order("id desc")
  end
  
  def update_view
    @one_post = Post.find(params[:post_id])
  end
  
  def modify
    @one_post = Post.find(params[:post_id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    redirect_to "/list"
  end
  
  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    redirect_to "/list"
  end
end