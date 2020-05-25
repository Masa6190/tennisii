Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
