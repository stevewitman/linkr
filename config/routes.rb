Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'signin', to: 'sessions#new', as: 'signin'
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :users
  resources :sessions
  resources :links

  root 'home#index'

end
