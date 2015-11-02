Rails.application.routes.draw do
  root to: 'visitors#index'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

end
