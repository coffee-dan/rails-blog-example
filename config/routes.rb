Rails.application.routes.draw do
  root "articles#index"

  # declares that GET /articles requests are mapped to the index action
  # of ArticlesController
  get "/articles", to: "articles#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
