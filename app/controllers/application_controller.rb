class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :yt_client

  private
    def yt_client
      @yt_client ||= YouTubeIt::Client.new(username: 'rex007', password: 'pegazus2626', dev_key:'AI39si6SS-EIOz0bnCcIWWvnfcRrUiMZztlNFwk4ze3iKvxJLbSpP9sxKMUfzwnPjSf3yfwBbUM1aoOqZxEzUf2UWqcgZv__zw')
    end
  end
  
