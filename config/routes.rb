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
end
