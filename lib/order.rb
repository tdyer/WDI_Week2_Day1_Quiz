require_relative 'product_type'
require_relative 'order_item'

class Order
  attr_accessor :order_id, :customer

  def initialize(order_id, items)
    @order_id    = order_id
    @customer    = customer
  end

  def complete_xaction
  end
end
