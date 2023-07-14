# product = Product.new(name: "Hand Towels", price: 10, description: "Soft kitchen towels")
# product.save

# product = Product.new(name: "Dish Soap", price: 4, description: "Cleans dishes")
# product.save

# product = Product.new(name: "Sponges", price: 2, description: "Perfect sponges for your kitchen sink")
# product.save

supplier = Supplier.new(name: "Amazon", email: "help@amazon.com", phone_number: "1-800-700-1111")
supplier.save

supplier = Supplier.new(name: "Walmart", email: "help@walmart.com", phone_number: "1-800-300-3333")
supplier.save

supplier = Supplier.new(name: "Target", email: "help@target.com", phone_number: "1-800-444-4444")
supplier.save
