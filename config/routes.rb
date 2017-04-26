Rails.application.routes.draw do
  resources :photos do
    member do
      resource :photo_like, path: 'like', only: [:update]
    end
    # PATCH /photos/:id/like

    #resources :comments
  end
  devise_for :users
  resources :users, only: [:index, :show]
  root 'feed#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
