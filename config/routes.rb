StackOverflow::Application.routes.draw do
  resources :questions do
    resources :answers
  end
  
  resources :users
  resources :votes
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new'
  match '/login',   to: 'sessions#new'
  match '/logout',  to: 'sessions#destroy', via: :delete
  root :to => 'questions#index'
end
