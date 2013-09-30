require_relative './order_item'
require_relative './log'

class Order
  include Log
  attr_accessor :order_id, :customer_name
  attr_accessor :order_items

  @@total_sales = 0

  def self.total_sales
    @@total_sales
  end

  def initialize(order_id, customer_name)
    @order_id = order_id
    @customer_name = customer_name
    @order_items = []
  end

  def to_s
    "order_id: #{order_id}: customer: #{customer_name}, cost: #{cost}\norder_items:\n#{order_items.join("\n")}"
  end
  
  def complete_xaction
    @@total_sales += cost
    log "Creating an order => #{self.to_s}"
  end

  def cost
    self.order_items.inject(0) do |sum, order_item|
      sum += (order_item.quantity * order_item.unit_price)
    end
  end
end
