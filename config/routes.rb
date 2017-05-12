Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  namespace :admin do
    resources :products
  end
  root 'products#index'
  # root 'welcome#index'
  # root 'pages#index'
  # root 'pageones#index'

  resources :products do
      member do
        post :add_to_cart
      end
  end

  resources :carts do
    collection do
      delete :clean
    end
  end
end
