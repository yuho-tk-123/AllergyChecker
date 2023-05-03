Rails.application.routes.draw do
  get 'menus/index'
  get 'members/index'
  
  get "/" => "home#top"
  get "about" => "home#about"
  get "top_menu" => "home#top_menu"

  get "login" => "teams#login_form"
  post "login" => "teams#login"
  get "signup" => "teams#new"
  post "teams/create" => "teams#create"
  get "logout" => "teams#logout"
  get "teams/:id/edit" => "teams#edit"
  post "teams/:id/update" => "teams#update"
  get "teams/:id/destroy" => "teams#destroy"
  get "teams/:id" => "teams#show"

  get "members/index" => "members#index"
  get "members/new" => "members#new"
  post "members/create" => "members#create"
  get "members/:id/edit" => "members#edit"
  post "members/:id/update" => "members#update"
  get "members/:id/destroy" => "members#destroy"
  get "members/:id" => "members#show"

  get "menus/index" => "menus#index"
  get "menus/new" => "menus#new"
  post "menus/create" => "menus#create"
  get "menus/:id/edit" => "menus#edit"
  post "menus/:id/update" => "menus#update"
  get "menus/:id/destroy" => "menus#destroy"
  get "menus/:id" => "menus#show"

  get "allergycheck" => "allergycheck#check"
  post "allergycheck/result" => "allergycheck#result"

end
