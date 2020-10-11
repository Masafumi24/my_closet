Rails.application.routes.draw do
  root to: 'closet#index'
  resource :tops, only: [:new]
  resource :outerwear, only: [:new]
  resource :pants, only: [:new]
  resource :shoes, only: [:new]
  resource :accesories, only: [:new]
  resource :others, only: [:new]
end
