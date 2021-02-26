Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show] do
    resources :posts, only: %i[show index]
  end

  resources :posts, only: %i[index show new create edit update]

  root 'posts#index'
end
