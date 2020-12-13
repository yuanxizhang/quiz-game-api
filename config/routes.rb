Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tests do
        resources :questions do
          resources :options
        end
      end
      resources :problems do
        resources :solutions
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
