class Api::V1::MyPlaylistController < ApplicationController

def show
  @playlist = show_songs[0]
end
end
