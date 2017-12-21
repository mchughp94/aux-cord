require 'rspotify'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :show_playlists, :show_songs

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def show_playlists
    RSpotify.authenticate("600ac1ced677478999958be93ea2042b", "06b55cde4f2f4b9cb616397381d3854b")
    user = RSpotify::User.find(current_user.uid)
    playlists = user.playlists
    # .map { |playlist| playlist.name }
    # playlists.join(', ')
  end
  def show_songs
    show_playlists.map { |playlist| playlist.tracks }
  end
end
