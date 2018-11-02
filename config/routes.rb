Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get     "/products"     => "products#index"
    post    "/products"     => "products#create"
    get     "/products/:id" => "products#show"
    patch   "/products/:id" => "products#update"
    delete  "/products/:id" => "products#destroy"

    get     "/suppliers"     => "suppliers#index"
    post    "/suppliers"     => "suppliers#create"
    get     "/suppliers/:id" => "suppliers#show"
    patch   "/suppliers/:id" => "suppliers#update"
    delete  "/suppliers/:id" => "suppliers#destroy"

    post    "/images"        => "images#create"

    post    "/users"         => "users#create"

    post    "/sessions"      => "sessions#create"

    get     "/orders"        => "orders#index"
    post    "/orders"        => "orders#create"

    get     "/carted_products"     => "carted_products#index"
    post    "/carted_products"     => "carted_products#create"
    delete  "/carted_products/:id" => "carted_products#destroy"
  end

  get   "/products"           =>  "products#index"
  get   "/products/new"       =>  "products#new"
  post  "/products"           =>  "products#create"
  get   "/products/:id"       =>  "products#show"
  get   "/products/:id/edit"  =>  "products#edit"
end