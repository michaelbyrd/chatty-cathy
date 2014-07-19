Rails.application.routes.draw do
  root 'home#index'

  resource :session, only: :new

  get '/unfollow/:uid', to: 'friendship#destroy', as: :unfollow

  get '/auth/:provider/callback', to: 'sessions#create'
end
