require_relative 'log'
require_relative 'order_item'
require 'pry'

class Order
  include Log
  attr_accessor :order_id, :customer, :order_items

  @@cumulative_sales = 0.0

  def self.cumulative_sales
    @@cumulative_sales
  end

  def initialize(order_id, customer)
    @order_id    = order_id
    @customer    = customer
    @order_items = []
  end

  def complete_xaction
    log
  end

  def order_price
    @order_items.inject(0.0) do |total, item|
      total += (item.quantity * item.product.price)
      binding.pry
    end
  end

  def to_s
    "Order ID: #{@order_id}
    Customer: #{@customer}
    Item(s): #{@order_items}
    Total Price: $#{order_price}"
  end
end
