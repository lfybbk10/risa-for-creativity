class ContentsController < ApplicationController
  def show
  @contents = Content.all
  end

  def display
    @content = Content.find(params[:id])
  end

end