require_relative '../lib/order'

# Add product descriptions
products = [ ]
peas = ProductType.new(120, "Peas", 2.25, "Small bag of Peas")
carrots = ProductType.new(121, "Carrots", 3.60, "Large bag of Carrots")
milk = ProductType.new(122, "Milk", 4.25, "1 gallon")
pudding = ProductType.new(123, "Pudding", 0.75, "Case of pudding")
products << peas << carrots << milk << pudding


# Create an order
order_number = 30
order = Order.new(order_number, "Jack Flash")
order.order_items << OrderItem.new(2, pudding, 0.65)
order.order_items << OrderItem.new(10, peas, peas.price - 0.1)
order.complete_xaction
order_number += 1

# Create another order
order = Order.new(order_number, "Tom Menino")
order.order_items << OrderItem.new(6, milk, milk.price)
order.order_items << OrderItem.new(300, peas, peas.price - 0.1)
order.order_items << OrderItem.new(7, carrots, carrots.price)
order.complete_xaction
order_number += 1


# puts "Total sales = #{Order.total_sales}"
