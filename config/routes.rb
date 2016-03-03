Discover::Engine.routes.draw do
  resources :topics
  resources :replies
  resources :nodes
  root to: "topics#index"
end
