Rails.application.routes.draw do

  get 'login', to: 'session#login', as: 'session_login_form'
  post 'login', to: 'session#login', as: 'login_method'
  get 'welcome', to: 'session#welcome', as: 'session_logged_in'

  get 'subject/:id', to: 'subjects#show', as: 'show_subject'
  delete 'book/destroy/:id', to: 'books#destroy', as: 'delete_book'

  patch 'book/update/:id', to: 'books#update', as: 'update_book'
  get 'book/edit/:id', to: 'books#edit', as: 'edit_book'

  #new_book = view
  get 'books/new', to: 'books#new', as: 'new_book'
  #create_new_book = controller
  post 'books/create', to: 'books#create', as: 'create_new_book'

  get 'book/:id', to: 'books#show', as: 'show_book'
  get 'books', to: 'books#index'

  get 'users/show'

  get 'mycsbe', to: 'mycsbe#show'
  get 'myswitzerland', to: 'myswitzerland#show'
  get 'myfriends', to: 'myfriends#show'
  get 'helloworld', to: 'helloworld#index'
  root 'pages#home', as: 'home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
