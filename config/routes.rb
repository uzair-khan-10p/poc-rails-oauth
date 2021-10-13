Rails.application.routes.draw do
  # use_doorkeeper
  use_doorkeeper do
    skip_controllers :authorizations, :authorized_applications
  end

  devise_for :users

  resources :bookmarks

  namespace :api do
    resources :bookmarks, only: %i[index]
  end

  root 'bookmarks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
