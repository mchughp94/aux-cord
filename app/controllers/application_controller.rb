require 'rspotify'
require 'pry'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :show_playlists, :show_songs, :playlist_check

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def show_playlists
    RSpotify.authenticate("600ac1ced677478999958be93ea2042b", "06b55cde4f2f4b9cb616397381d3854b")
    user = RSpotify::User.find(current_user.uid)
    playlists = user.playlists
  end

  def show_songs
    show_playlists.select { |playlist| playlist.id == params['id'] }
  end

  def playlist_check
   show_playlists.each do |playlist|
  playlist.id
 end
 end
end
