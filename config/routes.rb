Rails.application.routes.draw do



  root 'pages#welcome'
  get '/about' => 'pages#about'
  get "signup" => "users#signup", :as => "signup"
  resources :users, only: [:create]
  get "login" => "users#login", :as => "login"
  post "create_login_session" => "users#create_login_session"
  delete "logout" => "users#logout", :as => "logout"
  

  
  # issues

  resources  'issues'
  # get '/issues/new' => "issues#new" 
  # get 'issues' => 'issues#index', :as => 'issues'
  # get '/issues/:id' => "issues#show", :as => "issue"
  # delete 'issues/:id' => 'issues#destroy'
  # post 'issues' => 'issues#create'
  # get 'issues/:id/edit' => 'issues#edit', :as => 'edit_issue'
  # patch 'issues/:id' => 'issues#update'

  # comments

  resources :comments, only: [:create]

end
