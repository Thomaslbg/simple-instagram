Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "/dashboard" => "users#index"


  resources :posts, only: %i[new create index]

end
