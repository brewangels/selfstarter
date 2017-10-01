require 'untappd'

Untappd.configure do |config|
  config.client_id = ENV['UNTAPPD_CLIENT_ID']
  config.client_secret = ENV['UNTAPPD_CLIENT_SECRET']
  config.gmt_offset = 2
end

