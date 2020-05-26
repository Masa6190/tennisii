Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  
  resources :prefecture, only: [:index, :show] do
    collection do
      get 'tokyo'
    end
  end

  get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
