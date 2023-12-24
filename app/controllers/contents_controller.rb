class ContentsController < ApplicationController
  def show
  @contents = Content.all
  end

  def display
    @content = Content.find(params[:id])
    @comment = Comment.new
  end

end