Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get "/all_products"   => "products#all_products"
    get "/product/:name"  => "products#product"
    get "/product"        => "products#product"
  end
end
