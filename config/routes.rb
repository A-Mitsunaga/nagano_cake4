Rails.application.routes.draw do

  root to: 'homes#top'
  get 'about' => 'homes#about'
  post '/customers/sign_up' => 'devise/registrations#create'

  devise_for :customers
end
