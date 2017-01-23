Rails.application.routes.draw do
            
  get '/groups' => 'groups#index'               # stub, not used
  get '/groups/new' => 'groups#new'             # renders if no group - from login or signup
  post '/groups' => 'groups#create'             
  get '/groups/:id' => 'groups#show'            # renders if groups exists - from login
  get '/groups/:id/edit' => 'groups#edit'       # executes from show
  patch '/groups/:id' => 'groups#update'        
  delete '/groups/:id' => 'groups#destroy'      # executes from show

  get '/members' => 'members#index'           
  get '/members/new' => 'members#new'
  post '/members' => 'members#create'
  get '/members/:id' => 'members#show'
  get '/members/:id/edit' => 'members#edit'
  patch '/members/:id' => 'members#update'
  delete '/members/:id' => 'members#destroy'

  get '/resources' => 'resources#index'
  # get '/resources/:id' => 'resources#show'           

  get '/scenarios' => 'scenarios#index'
  get '/scenarios/:id' => 'scenarios#show"'

  get '/' => 'users#landing'
  get  '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy' 

end
