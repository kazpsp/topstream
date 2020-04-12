Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :events, only: [:index, :show]
  devise_for :users, defaults: {format: :json}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :my do
    resources :events
    get 'profile', action: :show, controller: 'users'
  end

end
