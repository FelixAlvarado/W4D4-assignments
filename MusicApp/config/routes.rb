Rails.application.routes.draw do


resources :users, except: [:update, :destroy, :edit, :index]

resource :session, only: [:create, :new, :destroy]

resources :bands
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'sessions#new'
end
