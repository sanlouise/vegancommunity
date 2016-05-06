Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'pages#home'
  
  resources :contacts
  
  get '/about', to: 'pages#about' 
  get '/blog', to: 'pages#blog'
  
end
