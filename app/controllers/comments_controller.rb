class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to(post_path(@comment.post_id))
    else
      render :action => "new"   
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    post_id = @comment.post_id
    @comment.destroy
    
    redirect_to(post_path(post_id)) 
  end

end
