Rails.application.routes.draw do
    get '/twit' => 'twit#index'
    get '/twit/new' => 'twit#new'
    
    
    
    post '/twit/create' => 'twit#create'
    
    get '/twit/:id' => 'twit#show'
    
    
    get '/twit/:id/edit' => 'twit#edit'
    post '/twit/:id/update' => 'twit#update'
    
    
    get '/twit/:id/delete' => 'twit#delete'
    get '/twit/:id/show' => 'twit#show'
end
