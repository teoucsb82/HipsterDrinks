class CommentsController < ApplicationController
	def create
    @comment = Comment.new(comment_params)
    @comment.author_id = current_user.id
    if @comment.save
      flash[:success] = "Comment saved!"
    else
      flash[:danger] = @comment.errors.full_messages
    end
    redirect_to :back
  end
  
  private
  def comment_params
    params.require(:comment).permit(:commentable_id, :commentable_type, :body)
  end
end