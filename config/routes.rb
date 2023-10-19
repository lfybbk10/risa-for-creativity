Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'pages#home'

  get 'signup' => 'users#new'

  get 'content' => 'contents#show'

  get '/contents/:id', to: 'contents#display'


  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'



  resources :users
  resources :contents, param: :id
end
