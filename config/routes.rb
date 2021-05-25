Rails.application.routes.draw do

  root to: 'homes#top'
  get 'about' => 'homes#about'
  get '/admin' => 'homes#top'
  #post '/customers/sign_up' => 'devise/registrations#create'

 namespace :admin do
 resources :items
 resources :genres, only: [:index, :create, :edit, :uodate]
 post '/items/new' => 'items#create'
 post '/genres/new' => 'genres#create'

end
  devise_for :customers
end
