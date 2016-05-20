if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_credentials = {
			# Configuration for Amazon S3
		}