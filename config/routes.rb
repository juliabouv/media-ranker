Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'works#media_spotlight'
  
  resources :works do
    resources :votes, only: [:create]
  end

  resources :users, only: [:index, :show]

  get "/login", to: "users#login_form", as: "login"
  post "/login", to: "users#login"
  post "/logout", to: "users#logout", as: "logout"
end
