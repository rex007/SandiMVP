class DomovController < ApplicationController
  require 'youtube_it'

  def index
  	@blogs = Blog.order("created_at DESC").limit(2)
  end

end
