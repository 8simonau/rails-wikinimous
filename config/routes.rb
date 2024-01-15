Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "articles#index", as: "articles"
  get "articles/new", to: "articles#new"
  get "articles/:id", to: "articles#show", as: "article"
  post "/", to:"articles#create"
  delete "articles/:id", to: "articles#delete"
  get "articles/:id/edit", to: "articles#edit", as: "edit"
  patch "articles/:id", to: "articles#update"
end
