Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "/dashboard" => "users#index"
  get "/profile/:username" => "users#profile", as: :profile
  get "post/like/:post_id" => "likes#save_like", as: :save_like
  post "follower/user" => "users#follow_user", as: :follow_user
  resources :posts, only: %i[new create index]

end
