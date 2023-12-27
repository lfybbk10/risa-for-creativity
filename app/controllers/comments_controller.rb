class CommentsController < ApplicationController
  helper ContentsHelper
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id if logged_in?

    comments = Comment.where(content_id: @comment.content_id)

    where = comments.where(user_id: @comment.user_id)

    if where.size > 0
      return
    end

    if @comment.save
      redirect_back fallback_location: root_path, notice: 'Комментарий успешно сохранен в базе данных'
    else
      render :new
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:content_id, :user_id, :text, :rating)
  end
end