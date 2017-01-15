Rails.application.routes.draw do
            
  get '/groups/new' => 'groups#new'             # renders if no group - from login or signup
  post '/groups' => 'groups#create'             
  get '/groups/:id' => 'groups#show'            # renders if groups exists - from login
  get '/groups/:id/edit' => 'groups#edit'       # renders from show
  patch '/groups/:id' => 'groups#update'        
  delete '/groups/:id' => 'groups#destroy'      #renders from show

  # get '/products' => 'products#index'
  # get '/products/new' => 'products#new'
  # post '/products' => 'products#create'
  # get '/products/:id' => 'products#show'
  # get '/products/:id/edit' => 'products#edit'
  # patch '/products/:id' => 'products#update'
  # delete '/products/:id' => 'products#destroy'

  # get '/products/new' => 'products#new'
  # post '/products' => 'products#create'
  # get '/products/:id' => 'products#show'
  # get '/products/:id/edit' => 'products#edit'
  # patch '/products/:id' => 'products#update'
  # delete '/products/:id' => 'products#destroy' 

  get '/' => 'users#index'
  get  '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy' 

end
