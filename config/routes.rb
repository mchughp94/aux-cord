Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

get '/auth/spotify/callback', to: 'users#spotify'
end
