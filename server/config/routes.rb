Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
    devise_for :users, controllers: {
          sessions: 'api/v1/users/sessions'
        }
    resources :documents, only: [:index, :create, :update, :destroy]
    resources :users, only: [:index, :show]  
    resources :users do
      collection do
        get 'current-user'
      end
    end 
    resources :departaments, only: [:index]   
    resources :positions, only: [:index] 
    resources :types, only: [:index] 
      end
    end


end
