Rails.application.routes.draw do
  root 'statistics#new'

  resources :statistics, only: [:new, :show, :edit]
end
