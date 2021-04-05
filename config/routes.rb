Rails.application.routes.draw do
  root "articles#index"

  # routes method that maps all of the conventional CRUD routes for a 
  # collection of resources, such as articles. several GETs and a POST,
  # PATCH, and DELETE
  resources :articles

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
