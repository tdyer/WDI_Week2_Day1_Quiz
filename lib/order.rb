require_relative 'product_type'
require_relative 'order_item'

class Order
  attr_accessor :order_id, :customer, :order_items

  def initialize(order_id, customer)
    @order_id    = order_id
    @customer    = customer
    @order_items = []
  end

  def complete_xaction
  end

  def to_s
    "Order ID: #{@order_id}
    Customer: #{@customer}
    Item(s): #{@order_items}"
  end
end
