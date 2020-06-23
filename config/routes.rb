Rails.application.routes.draw do
  root 'application#homepage'

  resources :application, only: [:index]
  resources :albums, :musics, :apis


end
