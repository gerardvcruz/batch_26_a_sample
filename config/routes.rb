Rails.application.routes.draw do
  # resources(:rice)
  # get 'rice' => 'rice#index'
  # get 'rice/:id' => 'rice#show'

  # resources(:potatos)
  
  # get 'potatos' => 'potatos#index'
  # get 'potatos/new' => 'potatos#new'
  # get 'potatos/:id' => 'potatos#show'
  # get 'potatos/:id/edit' => 'potatos#edit'
  # post 'potatos' => 'potatos#create'
  # put 'potatos/:id' => 'potatos#update'
  # delete 'potatos/:id' => 'potatos#delete'


  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  post '/articles' => 'articles#create', as: 'create_article' 
end
