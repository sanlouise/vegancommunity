Rails.application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'pages#home'
  
  resources :lifestyle_posts
  resources :contacts
  resources :recipes
  resources :cosmetics
  
  get '/about', to: 'pages#about' 
  get '/blog', to: 'pages#blog'
  get '/lifestyle', to: 'lifestyle_posts#index'
  
  get '/makeup', to: 'cosmetics#makeup' 
  get '/skin-body', to: 'cosmetics#skin_body' 
  get '/hair', to: 'cosmetics#hair' 
  
  get '/breakfast', to: 'meals#breakfast'
  get '/lunch', to: 'meals#lunch'
  get '/dinner', to: 'meals#dinner'
  get '/mealtype', to: 'meals#choose_meal'
  
end
