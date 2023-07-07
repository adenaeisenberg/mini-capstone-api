require "http"

response = HTTP.get("http://localhost:3000/hand_towels.json")
product_name = response.parse(:json)["name"]
product_price = response.parse(:json)["price"]
product_description = response.parse(:json)["description"]

p "This item is #{product_name} and is #{product_description}! It costs #{product_price}."

response = HTTP.get("http://localhost:3000/dish_soap.json")
product_name = response.parse(:json)["name"]
product_price = response.parse(:json)["price"]
product_description = response.parse(:json)["description"]

p "This item is #{product_name} and is #{product_description}! It costs #{product_price}."

table = TTY::Table.new(["header1", "header2"], [["a1", "a2"], ["b1", "b2"]])

puts table.render(:ascii)
# =>
#  +-------+-------+
#  |header1|header2|
#  +-------+-------+
#  |a1     |a2     |
#  +-------+-------+
#  |b1     |b2     |
#  +-------+-------+

table = TTY::Table[["a1", "a2"], ["b1", "b2"]]
table = TTY::Table.new([["a1", "a2"], ["b1", "b2"]])
table = TTY::Table.new(rows: [["a1", "a2"], ["b1", "b2"]])
