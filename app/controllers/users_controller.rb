class UsersController < ApplicationController
  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])

    hash = spotify_user.to_hash
    spotify_user = RSpotify::User.new(hash)

    redirect_back fallback_location: "/"
  end
end
