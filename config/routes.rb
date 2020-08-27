Rails.application.routes.draw do

  root "recipes#home"

  resources :recipes, only: [:index, :show]

  get '/search', to: 'recipes#search'
end
