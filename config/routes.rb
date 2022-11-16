Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:index, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
