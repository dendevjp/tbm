Rails.application.routes.draw do
  resources :users
  get  '/adduser',  to: 'users#new'
  root 'static_pages#home'
  get  'static_pages/home'
  post '/adduser',  to: 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
