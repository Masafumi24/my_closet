Rails.application.routes.draw do
  root to: 'closet#index'
  resource :tops, only: [:new, :create]
  resource :outerwears, only: [:new, :create]
  resource :pants, only: [:new, :create]
  resource :shoes, only: [:new, :create]
  resource :accessories, only: [:new, :create]
  resource :others, only: [:new, :create]
end
