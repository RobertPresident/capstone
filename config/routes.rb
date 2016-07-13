Rails.application.routes.draw do
  devise_for :users
  root to: 'resources#index' 
  get '/resources' => 'resources#index'
  get '/resources/new' => 'resources#new'
  post '/resources' => 'resources#create'

  get '/resources/:id' => 'resources#show'

  get '/resources/:id/edit' => 'resources#edit'
  patch '/resources/:id' => 'resources#update'

  delete '/resources/:id' => 'resources#destroy'

  get '/doctors' => 'doctors#index'
  get '/doctors/:id' => 'doctors#show'

  get '/services' => 'services#index'
  get '/services/:id' => 'services#show'

  get '/maps' => 'maps#index'

  get '/houses' => 'houses#index'

  get '/cms' => 'cms#index'

  get '/crs' => 'crs#index'

  get '/eaes' => 'eaes#index'

  get '/faca' => 'faca#index'

  get '/mc' => 'mc#index'








end
