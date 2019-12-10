Rails.application.routes.draw do
  resources :messages
  resources :tasks
  resources :events do
    collection do
      get 'mine'
    end
  end
  get 'accounts/sign_in'
  get 'accounts/sign_up'
  root 'events#mine'
  get 'contact', to: 'home#contact'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
