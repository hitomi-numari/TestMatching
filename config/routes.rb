Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  devise_for :users
  resources :blogs do
    member do
      get :show2
    end
  end
  resources :users, only: [:index, :show]
  resources :apply_to_blogs, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root 'blogs#index'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
