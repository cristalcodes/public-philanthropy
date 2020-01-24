Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#home'

  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks'}
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end




  resources :donations, only: [:index, :new, :create, :show] do 
      resources :organizations, only: [:index, :show]
  end

  resources :donations #, only: [:new, :create]




end
