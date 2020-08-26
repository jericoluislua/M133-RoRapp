Rails.application.routes.draw do
  get 'subject/show'
  get 'book/destroy/:id', to:'books#destroy', as: 'delete_book'
  get 'book/edit/:id', to: 'books#edit', as: 'edit_book'
  get 'books/new', to: 'books#new', as: 'create_new_book'
  get 'book/:id', to:'books#show', as: 'show_book'
  get 'books', to: 'books#index'
  get 'users/show'
  get 'mycsbe', to: 'mycsbe#show'
  get 'myswitzerland', to: 'myswitzerland#show'
  get 'myfriends', to: 'myfriends#show'
  get 'helloworld', to: 'helloworld#index'
  root 'pages#home', as: 'home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
