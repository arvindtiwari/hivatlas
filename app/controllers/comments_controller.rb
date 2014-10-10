class CommentsController < ApplicationController

  def new
  @blog = Blog.find(params[:blog_id])
  @comment = @blog.comments.new
  end

  def show
  @blog = Blog.find(params[:blog_id])
  @comment=@blog.comments.find(params[:id])
  end

  def index
  @blog = Blog.find(params[:blog_id])
  @comments=Comment.all
  end

 
  def create
   if signed_in?
     @blog = Blog.find(params[:blog_id])
     @comment = @blog.comments.new(comment_params)

      if @comment.save 
         redirect_to blog_path(@blog, @comment)
      else 
      render 'new'
      end
      else
        redirect_to user_session_path
      end
    end

 
private
  def comment_params
    params.require(:comment).permit!#(:name, :content, :user_id)
  end
end




