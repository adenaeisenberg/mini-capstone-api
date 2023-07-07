Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "show_all_product"
  get "/product/:id" => "products#one_product"
end
