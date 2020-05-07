Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plays, only: :index
  resources :images, only: [:index, :create]

  root to: 'images#index'
end
