class PlaylistsController < ApplicationController
  def index
  end
  def show
    RSpotify.authenticate("600ac1ced677478999958be93ea2042b", "06b55cde4f2f4b9cb616397381d3854b")
    user = RSpotify::User.find(current_user.uid)
    @playlists = user.playlists
  end
end
