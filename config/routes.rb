Rails.application.routes.draw do
  root 'pages#home'
  devise_scope :user do
    # Redirects signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end
  devise_for :users

  resources :rooms do
    resources :messages
  end
  get 'user/:id', to: 'users#show', as: 'user'
end
