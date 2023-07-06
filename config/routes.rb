Rails.application.routes.draw do
  get "/one_product", controller: "products", action: "show_one_product"
  get "/all_products", controller: "products", action: "show_all_product"
end
