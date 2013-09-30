require_relative 'log'
require_relative 'order_item'
require_relative 'product_type'

class Order
  include Log
  attr_accessor :order_id, :customer_name, :order_items

  def initialize(order_id, customer_name)
    @order_id = order_id
    @order_name = customer_name
    @order_items = []
  end

  def order_items(order_item)
    @order_items << order_item
  end

  def to_s
    "order_id: #{@order_id}, customer_name: #{@customer_name}, order_items: #{@order_items}"
  end

  def complete_xaction
    log self.to_s
  end

end
