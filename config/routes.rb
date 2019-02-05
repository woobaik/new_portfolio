Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portfols
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs do
    member do
      get 'toggle_status'
    end
  end
  root 'portfols#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
