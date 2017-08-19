Rails.application.routes.draw do
  resources :blogs
  root 'blogs#index'
  post '/new' => 'blogs#new'
  post '/blogs/:id' => 'blogs#like'
  post '/reply' => 'replys#new'
end
