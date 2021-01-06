Rails.application.routes.draw do

  get 'preference/index'

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do
    resources :preferences, only: [:index]
  end 
# Create a PreferencesController, routes, and views.
# Do this under an Admin module to separate it from the standard user functionality.
end
