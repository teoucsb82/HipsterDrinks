class CommentsController < ApplicationController
  before_filter :authenticate_user, :except => [:index, :show]
  
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
  
  def destroy
    get_comment
    @comment.destroy
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:commentable_id, :commentable_type, :body)
  end

  def get_comment
    @comment = Comment.find(params[:id])
  end
end