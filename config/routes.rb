Rails.application.routes.draw do
  get 'addresses/new_address'
  get 'addresses/edit_address'
  get 'addresses/show_address'
  get 'addresses/show_address'
  get 'addresses/edit_address'
  root 'static_people#home'
  get '/about', to: 'static_people#about'
  resources :people
end
