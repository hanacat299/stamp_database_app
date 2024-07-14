Rails.application.routes.draw do
  root to: "stamps#index"
  resources :stamps, only: [:index]
end
