Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :investments, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :offered_services, only: [:index, :show, :new, :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :groups, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :users_groups, only: [] do
      collection do
        post :join_request
      end
    end
  end
end
