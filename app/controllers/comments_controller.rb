class CommentsController < ApplicationController
  before_filter :authenticate_user, :except => [:index, :show]
  
	def create
    @comment = Comment.new(comment_params)
    @comment.author_id = current_user.id
    if @comment.save
      flash[:success] = "Thanks for your review!"
    else
      flash[:danger] = @comment.errors.full_messages
    end
    redirect_to :back
  end

  def edit
    @comment = Comment.find(params[:id])
    render "shared/_comments_form"
  end

  def update
    get_comment
    if @comment.update(comment_params)
      flash[:success] = 'Review was successfully updated.' 
      redirect_to :back
    else
      format.html { render :edit }
      format.json { render json: @comment.errors, status: :unprocessable_entity }
    end
  end
  
  def destroy
    get_comment
    @comment.destroy
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:commentable_id, :commentable_type, :body, :rating)
  end

  def get_comment
    @comment = Comment.find(params[:id])
  end
end