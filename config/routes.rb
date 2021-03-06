Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :games, only: [:show, :index, :create]
      resources :sessions, only: [:create, :destroy]
      resources :users, only: [:show, :create, :update, :destroy]
    end
  end

end
