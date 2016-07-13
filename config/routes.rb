Rails.application.routes.draw do
  devise_for :users
  root to: 'skrollr#index' 
  get '/resources' => 'resources#index'
  
  get '/skrollr' => 'skrollr#index'

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









