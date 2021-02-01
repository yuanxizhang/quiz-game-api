Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tests 
      resources :questions 
      resources :options
      
      resources :problems do
        resources :solutions
      end

      resources :users, only: [:create, :show, :index]

      post '/users',         to: 'users#create'
      get '/users/:user_id', to: 'users#show'
      get '/users',          to: 'users#index'

      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
