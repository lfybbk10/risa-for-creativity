Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'pages#home'

  get 'signup' => 'users#new'

  get 'content' => 'contents#show'

  get '/contents/:id', to: 'contents#display'


  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'

  get 'logout' => 'sessions#destroy', as: :logout # Используем GET для выхода из аккаунта


  # Используем ресурсы для комментариев
  resources :comments, only: [:new, :create]



  resources :users
  resources :contents, param: :id

end
