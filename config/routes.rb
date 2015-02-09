Rails.application.routes.draw do

  root 'entries#index'

  resources :entries, except: [:new, :edit, :update, :destroy]

end
