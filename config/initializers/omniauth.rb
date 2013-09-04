OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '568462169877245', '078ae0a34808f9db0582cd47d27a637a'
end