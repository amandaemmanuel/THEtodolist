Rails.application.routes.draw do
  
  resources :lists do
    resources :items
  end
  
  #making the page of lists the index page (the root is the lists controller, index method/action)
  root to: "lists#index"
end
