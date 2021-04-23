Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations' } 
  devise_for :admins, skip: [:registrations], controllers: {sessions: 'admins/sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :admin do
    #admin/posts
    root to: "home#index"
    resources :admins
    resources :users, only: :index
    resources :posts, only: [:index, :show]
  end

  root to: "user/timeline#index"

  namespace :user do
    get 'profile', to: "profile#show"
    get 'potencial_to_follow', to: "profile#potencial_to_follow"
    get 'following', to: "profile#following"
    get 'followers', to: "profile#followers"
    resources :posts, only: [:create, :destroy] do
      member do
        post :like_toggle
      end
    end
    resources :users, only: :show

    post 'follow/:id', to: "subscriptions#follow", as: :follow
    post 'unfollow/:id', to: "subscriptions#unfollow", as: :unfollow
  end
  
end
