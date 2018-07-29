Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index"
  resources :articles, :article_comments

  post '/article_comments/create/:id', to: 'articles_comments#create_comment', as: 'create_comment'
end
