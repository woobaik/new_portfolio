Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portfols, except: [:show] do
    put :sort, on: :collection
  end
  
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs do
    member do
      get 'toggle_status'
    end
  end
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
