require 'stream_rails'

StreamRails.configure do |config|
  config.api_key     = "rhzdc2y3e64p"
  config.api_secret  = "sdw5prguq4294kcqfpzqqb32c546rvwd29762j2qnm9xxdjrfyunh8wpbdngtw36"
  config.timeout     = 30                # Optional, defaults to 3
  config.location    = 'us-east'         # Optional, defaults to 'us-east'
  # If you use custom feed names, e.g.: timeline_flat, timeline_aggregated,
  # use this, otherwise omit:
  config.news_feeds = { flat: "timeline_flat", aggregated: "timeline_aggregated" }
  # Point to the notifications feed group providing the name, omit if you don't
  # have a notifications feed
  config.notification_feed = "notification"
end