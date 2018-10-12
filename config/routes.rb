Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get "/all_products"   => "products#all_products"
    get "/first_product"  => "products#first_product"
    get "/last_product"   => "products#last_product"
    get "/random_product"   => "products#random_product"
  end
end
