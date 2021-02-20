Rails.application.routes.draw do
  scope '/api/v1' do
    post '/login', to: 'user_token#create'
  end

  namespace :api do
    namespace :v1 do
      resources :tests 
      resources :questions 
      resources :options
      
      resources :problems do
        resources :solutions
      end

      resources :users, param: :_username

      
      post '/signup',          to: 'users#create'
      get '/users/:username', to: 'users#show'
      get '/users',           to: 'users#index'

    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
