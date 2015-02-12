Rails.application.routes.draw do

  root 'entries#index'

  resources :entries, except: [:new, :edit, :update, :destroy]

  # Handle short URLs
  match "*path", to: 'entries#resolve', via: :all

end
