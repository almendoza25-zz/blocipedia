Rails.application.routes.draw do
  get 'downgrade/new'

  resources :wikis

  devise_for :users

  resources :charges, only: [:new, :create]
  resources :downgrade, only: [:new, :create]
  post 'downgrade/create'

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
