Pamatat::Engine.routes.draw do
  resources :tasks

  root "tasks#index"
end
