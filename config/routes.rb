Rails.application.routes.draw do

  root to: 'homes#top'
  get 'about' => 'homes#about'
  get '/admin' => 'homes#top'
  #post '/customers/sign_up' => 'devise/registrations#create'
 
 namespace :admin do
 resources :items
 post '/items/new' => 'items#create'
end
  devise_for :customers
end
