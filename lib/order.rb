require_relative 'log'
require_relative 'order_item'
require_relative 'product_type'

class Order
  include Log
  attr_accessor :order_id, :customer_name, :order_items
  
  @@total_sales = 0
  
  def initialize(order_id, customer_name)
    @order_id = order_id
    @order_name = customer_name
    @order_items = []
  end

  def to_s
    "order_id: #{@order_id}, customer_name: #{@customer_name}, order_items: #{@order_items}"
  end

  def complete_xaction
    log self.to_s
    @@total_sales += self.price
    puts "This is my #{@@total_sales}"
  end

  def price
    order_items.inject(0) do |sum, order_item|
      sum += order_item.unit_price
    end
  end

  def self.total_sales
    return @@total_sales
  end

end
