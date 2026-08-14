Rails.application.routes.draw do
  root 'songs#index'

  resources :artists do
    resources :songs, only: %i[index show]
  end
  resources :songs

  namespace :admin do
    resources :preferences, only: %i[index show edit update]
  end
end
