Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'competitions#index'

  resources :competitions, only: [:index, :show]
  resources :matchs, only: [:index, :show]
end
