Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  devise_for :users
    resources :blogs do
      get 'show2', :on => :member
      get 'complete', :on => :collection
    end
  resources :users, only: [:index, :show]
  resources :apply_to_blogs, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  devise_scope :user do
    authenticated :user do
      root :to => 'blogs#index', as: :authenticated_root
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new', as: :unauthenticated_root
    end
  end
    mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
