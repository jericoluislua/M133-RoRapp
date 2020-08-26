Rails.application.routes.draw do
  get 'users/show'
  get 'mycsbe', to: 'mycsbe#show'
  get 'myswitzerland', to: 'myswitzerland#show'
  get 'myfriends', to: 'myfriends#show'
  root 'pages#home'
  get 'helloworld', to: 'helloworld#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
