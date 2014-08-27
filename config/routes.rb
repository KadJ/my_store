MyStore::Application.routes.draw do
  resources :users
  match '/signup',  to: 'users#new', via: 'get'

  resources :items do
  	get :upvote, on: :member
  	get :expensive, on: :collection
  end
 
end
