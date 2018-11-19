Rails.application.routes.draw do
  root "logsheets#index"
  devise_for :users

  resources :logsheets
end
