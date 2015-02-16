Rails.application.routes.draw do

  root 'entries#index'

  resources :entries, except: [:new, :edit, :update, :destroy]

  # Handle short URLs
  match "*hash_id", to: 'entries#resolve', via: :all, as: :short

end
