Rails.application.routes.draw do
    
  

  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  resources :tasks do
  	resources :todos, only: [:create]
  end
  
  resources :todos, only: [:index] do
  	collection do
  		get 'faltantes'
  	end
  end
 
  
  root "tasks#index"
    

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
