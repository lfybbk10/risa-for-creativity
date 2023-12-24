class ContentsController < ApplicationController
  def show
  @contents = Content.all
  end

  def display
    @content = Content.find(params[:id])
    @comment = Comment.new
    @comments = @content.comments
  end

  def average_rating(comments)
    if comments.any?
      total_rating = comments.sum(&:rating)
      average = total_rating.to_f / comments.length
      average.round(2)
    else
      "N/A"
    end
  end

end