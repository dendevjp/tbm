Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  resources :rconfigs
  resources :systemfailures
  get  '/adduser',  to: 'users#new'
  get  '/systemfailureupload',  to: 'systemfailures#systemfailureupload'
  root 'static_pages#home'
  get  'static_pages/home'
  post '/adduser',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :systemfailures do
    collection { post :import }
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
