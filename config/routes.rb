Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'confessions#index'
  resources :confessions
  get 'about', to: 'confessions#about'
end
