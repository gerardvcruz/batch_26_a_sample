Rails.application.routes.draw do
  resources(:rice)
  # get 'rice' => 'rice#index'
  # get 'rice/:id' => 'rice#show'

  # resources(:potatos)
  
  get 'potatos' => 'potatos#index'
  get 'potatos/new' => 'potatos#new'
  get 'potatos/:id' => 'potatos#show'
  get 'potatos/:id/edit' => 'potatos#edit'
  post 'potatos' => 'potatos#create'
  put 'potatos/:id' => 'potatos#update'
  delete 'potatos/:id' => 'potatos#delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
