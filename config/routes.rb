Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"home#index"
  get "/bienvenida", to: "home#index"
  get "organizations", to: "organizations#index"
  get "organizations/new", to: "organizations#new", as: :new_organizations
  get "organizations/:id", to: "organizations#show"
  get "organizations/:id/edit", to: "organizations#edit"
  patch "organizations/:id", to: "organizations#update", as: :organization
  delete "organizations/:id", to: "organizations#destroy"
  post "organizations", to: "organizations#create"
end
