Rails.application.routes.draw do
  resources :loan_histories
  devise_for :users
  resources :books
  root :to => "books#index"

end
