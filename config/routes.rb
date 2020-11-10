Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :games, only: [:show]
      resources :sessions, only: [:create, :destroy]
      resources :users, only: [:create, :destroy]
    end
  end

end
