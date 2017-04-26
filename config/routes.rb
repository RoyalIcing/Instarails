Rails.application.routes.draw do
  resources :photos do
    member do
      #patch 'likes' => 'photo_likes#update'
      resource :photo_likes, path: 'likes', only: [:update]
    end
  end
  devise_for :users
  resources :users, only: [:index, :show]
  root 'feed#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
