Rails.application.routes.draw do
  root 'application#homepage'

  resources :albums, :musics

end
