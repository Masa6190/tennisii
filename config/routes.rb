Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts do
    resources :comments, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  
  resources :prefecture, only: [:index, :show] do
    collection do
      get 'hokkaido'
      get 'aomori'
      get 'iwate'
      get 'miyagi'
      get 'akita'
      get 'yamagata'
      get 'fukushima'
      get 'ibaraki'
      get 'tochigi'
      get 'gunma'
      get 'saitama'
      get 'chiba'
      get 'tokyo'
      get 'kanagawa'
      get 'niigata'
      get 'toyama'
      get 'ishikawa'
      get 'fukui'
      get 'yamanashi'
      get 'nagano'
      get 'gifu'
      get 'shizuoka'
      get 'aichi'
      get 'mie'
      get 'shiga'
      get 'kyoto'
      get 'osaka'
      get 'hyogo'
      get 'nara'
      get 'wakayama'
      get 'tottori'
      get 'shimane'
      get 'okayama'
      get 'hiroshima'
      get 'yamaguchi'
      get 'tokushima'
      get 'kagawa'
      get 'ehime'
      get 'kochi'
      get 'fukuoka'
      get 'saga'
      get 'nagasaki'
      get 'kumamoto'
      get 'oita'
      get 'miyazaki'
      get 'kagoshima'
      get 'okinawa'
    end
  end

  get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users, only: :show
end
