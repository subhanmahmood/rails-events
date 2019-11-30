Rails.application.routes.draw do
  resources :tasks
  resources :events 
  get 'accounts/sign_in'
  get 'accounts/sign_up'
  root 'home#home'
  get 'contact', to: 'home#contact'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
