require "http"

response = HTTP.get("http://localhost:3000/hand_towels.json")
product_name = response.parse(:json)["name"]
product_price = response.parse(:json)["price"]
product_description = response.parse(:json)["description"]

p "This item is #{product_name} and is #{product_description}! It costs #{product_price}."
