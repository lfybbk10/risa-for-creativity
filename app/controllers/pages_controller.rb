require 'net/https'
require 'uri'
require 'json'
require 'cgi'

class PagesController < ApplicationController
  include PagesHelper

  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

end

