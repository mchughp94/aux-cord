class HomeController < ApplicationController

  def show
    if current_user
      redirect_to '/playlists'
    end
  end
end
