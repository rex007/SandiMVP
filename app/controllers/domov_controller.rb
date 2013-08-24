class DomovController < ApplicationController

  def index
  	@blogs = Blog.all.order("created_at DESC").limit(2)
  end

  def bio

  end

end
