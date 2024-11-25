Rails.application.routes.draw do
  root "posts#index"
  resources :posts, only: [:index, :new, :create, :show] do
    resources :comments, only: :create
  end
end
