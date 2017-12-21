class MyplaylistController < ApplicationController

def show
  show_playlists.each do |playlist|
  @myplaylist = playlist.id
end
end
end
