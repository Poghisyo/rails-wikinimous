Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root to: 'articles#home'

#read all
  get 'articles', to: 'articles#index'

#create
  get 'articles/new', to: 'articles#new', as: 'new_article'
  post 'articles', to: 'articles#create'

#read one
  get 'articles/:id', to: 'articles#show', as: 'article'

#edit one
  get 'articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  patch 'articles/:id', to: 'articles#update'

  #delete one
  delete 'articles/:id', to: 'articles#destroy'
end
