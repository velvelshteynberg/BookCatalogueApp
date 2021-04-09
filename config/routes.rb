Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'books#index'
  
  get 'books' => 'books#index'

  get 'books/new' => 'books#new'
  post 'books' => 'books#create'

  get 'books/:id' => 'books#show', as: 'book'
end
