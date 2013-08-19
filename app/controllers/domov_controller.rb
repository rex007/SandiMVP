class DomovController < ApplicationController
  require 'youtube_it'

  def index
  	@blogs = Blog.order("created_at DESC").limit(2)
  	@videos = yt_client.my_videos
  end
end
