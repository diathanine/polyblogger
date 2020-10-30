Rails.application.routes.draw do
  resources :comments
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments
  end
  root 'articles#index'
end
