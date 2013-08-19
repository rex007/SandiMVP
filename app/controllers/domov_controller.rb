class DomovController < ApplicationController
  require 'youtube_it'

  def index
  	@blogs = Blog.limit(2).sort {|a,b| b<=>a}
  	@videos = yt_client.my_videos
  end
end
