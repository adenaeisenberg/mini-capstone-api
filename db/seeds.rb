# product = Product.new(name: "Hand Towels", price: 10, image_url: "https://m.media-amazon.com/images/I/91ut+z7gd2L._AC_SX679_.jpg", description: "Soft kitchen towels")
# product.save

# product = Product.new(name: "Dish Soap", price: 4, image_url: "https://m.media-amazon.com/images/I/71xgZ9Y18XL._AC_SX679_.jpg", description: "Cleans dishes")
# product.save

# product = Product.new(name: "Sponges", price: 2, image_url: "https://m.media-amazon.com/images/I/71XXzTtXI+L._AC_SX679_.jpg", description: "Perfect sponges for your kitchen sink")
# product.save

supplier = Supplier.new(name: "Amazon", email: "help@amazon.com", phone_number: "1-800-700-1111")
supplier.save

supplier = Supplier.new(name: "Walmart", email: "help@walmart.com", phone_number: "1-800-300-3333")
supplier.save

supplier = Supplier.new(name: "Target", email: "help@target.com", phone_number: "1-800-444-4444")
supplier.save
