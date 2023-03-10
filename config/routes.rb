Rails.application.routes.draw do
  resources(:rice)
  # get 'rice' => 'rice#index'
  # get 'rice/:id' => 'rice#show'

  # resources(:potatoes)
  
  get 'potatoes' => 'potatoes#index'
  get 'potatoes/:id' => 'potatoes#show'
  get 'potatoes/:id/edit' => 'potatoes#edit'
  post 'potatoes' => 'potatoes#create'
  put 'potatoes/:id' => 'potatoes#update'
  delete 'potatoes/:id' => 'potatoes#delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
