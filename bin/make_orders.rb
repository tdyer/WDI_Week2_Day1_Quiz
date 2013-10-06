require_relative '../lib/order'
require 'pry'

# Add product descriptions
products = [ ]
peas = ProductType.new(120, "Peas", 2.25)
carrots = ProductType.new(121, "Carrots", 3.60)
milk = ProductType.new(122, "Milk", 4.25)
pudding = ProductType.new(123, "Pudding", 0.75)
products << peas << carrots << milk << pudding

# Create an order
order_number = 30
order = Order.new(order_number, "Jack Flash")
order.items << OrderItem.new(2, pudding, 0.65)
order.items << OrderItem.new(10, peas, peas.price - 0.1)
order.complete_xaction
order_number += 1
order.total_price
order.total_orders

# Create another order
order = Order.new(order_number, "Tom Menino")
order.items << OrderItem.new(6, milk, milk.price)
order.items << OrderItem.new(300, peas, peas.price - 0.1)
order.items << OrderItem.new(7, carrots, carrots.price)
order.complete_xaction
order_number += 1
order.total_price
order.total_orders

