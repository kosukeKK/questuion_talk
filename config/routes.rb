Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index"
  resources :articles

  get '/article_comments/:id', to: 'articles_comments#show', as: 'article_comments'
  post '/article_comments/:id', to: 'articles_comments#create', as: 'create_article_comments'
  delete '/article_comments/:id', to: 'articles_comments#destroy', as: 'destroy_article_comments'
end
