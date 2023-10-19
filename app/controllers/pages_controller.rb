require 'net/https'
require 'uri'
require 'json'
require 'cgi'

class PagesController < ApplicationController
  include PagesHelper

  def home
    if logged_in?

    end
  end

end

