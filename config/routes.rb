Rails.application.routes.draw do
    devise_for :users
    root 'posts#index'
    resources :posts
    resources :tags, only: [:show]
    resources :categories


    devise_scope :user do
      get '/users/sign_out' => 'devise/sessions#destroy'
    end
    
end
