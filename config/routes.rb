Rails.application.routes.draw do
    get 'home/index' => 'home#index'
    get 'home/result' => 'home#result'
    
    #Create
    get '/posts/new' => 'posts#new'
    #post '/posts/create' => 'posts#create'
    get '/posts/create' => 'posts#create'
    
    #Read
    get '/posts/index' => 'posts#index'
    get '/posts/show/:post_id' => 'posts#show'
    
    #update
    get '/posts/edit/:post_id' => 'posts#edit'
    #post 'posts/update/:post_id' => 'posts#update'
    
    #delete
   # post '/posts/destroy/:post_id' => 'posts#destroy'
    get '/posts/destroy/:post_id' => 'posts#destroy'
    
    #deleteAll
    #get '/posts/destroy' => 'posts#destroyAll'
    
    root 'posts#new'
end
