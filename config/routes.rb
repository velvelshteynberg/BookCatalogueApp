Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'books#index'
  
  get 'books' => 'books#index'

  get 'books/new' => 'books#new'
  post 'books' => 'books#create'

  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update'

  delete 'books/:id' => 'books#destroy', as: 'delete_books'

  get 'books/:id' => 'books#show', as: 'book'

  # resources :books
end
