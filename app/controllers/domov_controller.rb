class DomovController < ApplicationController

  def index
  	@blogs = Blog.all.order("created_at DESC").limit(2)
  	@upcoming = Eventi.upcoming.reverse
  	@past = Eventi.past.reverse
  end

  def bio

  end

  def galerija
  	@slike = current_user.sandi_albums
  end  

end
