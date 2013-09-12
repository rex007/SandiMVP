class User < ActiveRecord::Base
	def self.from_omniauth(auth)
		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
			user.provider = auth.provider
			user.uid = auth.uid
			user.name = auth.info.name
			user.oauth_token = auth.credentials.token
			user.oauth_expires_at = Time.at(auth.credentials.expires_at)
			user.save!
		end
	end

	def facebook
		@facebook ||= Koala::Facebook::API.new('CAACEdEose0cBAB8P1FlBATUggt864E4ZBzHgXuSZCrUflr0QZATmqHvmoSJ9IYeNB6mIksZCFlwqZBSISrRGPonXN2NvBvk3lIGXuOJCqoGBJtZANOVQ40gCV7ZC9IuzpTmIQaF83BqJaz1KJVxw0m9f4px3AnYm3qUnJQTyaoPdejwTpUZBk0HKiwj9G5BdaTfwhIFWZCBMwZCgZDZD')
	end

	def sandi_albums
		slike = facebook.get_connection('292534410868883','photos')
	end


end
