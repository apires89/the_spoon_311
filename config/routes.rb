Rails.application.routes.draw do
  root to: "pages#home"
  get 'email', to: "mailbox#email"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about', to: "pages#about" , as: :about
  get 'contact', to: "pages#contact", as: :contact
  get 'restaurants', to: "restaurants#index"
  post 'restaurants', to: "restaurants#create"
  get 'restaurants/:id', to: "restaurants#show", as: :restaurant
end
