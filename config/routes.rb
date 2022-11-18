Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "/dashboard" => "users#index"
  get "/profile/:username" => "users#profile", as: :profile
  get "post/like/:post" => "likes#save_like", as: :save_like
  resources :posts, only: %i[new create index]

end
