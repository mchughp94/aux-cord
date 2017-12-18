require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, '600ac1ced677478999958be93ea2042b', "06b55cde4f2f4b9cb616397381d3854b", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end
