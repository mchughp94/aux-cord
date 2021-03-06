Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  resource :playlists, only: [:show] do
    resources :myplaylist, only: [:show]
  end
  namespace :api do
    namespace :v1 do
      resource :playlists, only: [:index, :show] do
        resources :myplaylist, only: [:show]
      end
    end
  end

  root to: "home#show"
end
