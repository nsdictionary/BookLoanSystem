Rails.application.routes.draw do
  devise_for :users

  resources :books
  resources :loan_histories

  root :to => "books#index"

end
