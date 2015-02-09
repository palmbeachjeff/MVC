Rails.application.routes.draw do
 #routes are nested, look up how to do nested routes
  resources :todo_lists do
    resources :todo_items
    	member do 
    		patch:complete
    	end
    end
  end

  root "todo_lists#index"

end
