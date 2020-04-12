Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :events
  devise_for :users, defaults: { format: :json }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
