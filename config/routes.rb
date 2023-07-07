Rails.application.routes.draw do
  # get "/all_products", controller: "products", action: "show_all_product"
  # get "/hand_towels", controller: "products", action: "hand_towels"
  # get "/dish_soap", controller: "products", action: "dish_soap"
  get "/product/:id" => "products#one_product"
end
