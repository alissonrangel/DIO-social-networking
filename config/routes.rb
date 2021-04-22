Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations' } 
  devise_for :admins, skip: [:registrations], controllers: {sessions: 'admins/sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :admin do
    #admin/posts
    root to: "home#index"
    resources :admins
  end

  root to: "user/timeline#index"

  namespace :user do

  end
  
end
