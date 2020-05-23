Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts
  get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
