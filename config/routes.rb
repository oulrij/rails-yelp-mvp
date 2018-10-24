Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'

  # get 'restaurants', to: 'restaurantsr#index'

  # get 'restaurants/new', to: 'restaurantsr#new', as: 'new_restaurant'
  # post 'restaurants', to: 'restaurantsr#create'

  # get 'resataurants/:id', to: 'restaurants#show'

  # get 'restaurants/:id/reviews/new', to: 'reviews#new', as: 'new_review'
  # post 'restaurnts/:id/reviews', to: 'reviews#create'

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :show, :new, :create]
  end
end
