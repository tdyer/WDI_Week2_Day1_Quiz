require_relative 'order_item'
require_relative 'log'

class Order
	include Log

	@@total_sales = 0
	@@order_count = 0

	attr_accessor :order_id, :customer, :order_items, :total_sales, :order_count, :customers, :price

  def initialize(order_id, customer)
  	@order_id = order_id
  	@customer = customer
  	@customers = []
  	@customers << @customer
  	@order_items = []
  	@@order_count += 1
  end

  def to_s
  	arr = []
  	@order_items.each do |item|
  		arr << item.to_s
   	end
  	return "#{@order_id}: #{arr}, total price: $#{@price}"
  end

  def complete_xaction
  	calculate_price
  	update_total_sales
  	log_entry("Order completed: #{to_s}")
  end

  def self.total_sales
    @@total_sales
  end

  def calculate_price
  	@price = 0
  	  @order_items.each do |item|
      @price = @price + (item.unit_price * item.quantity)
    end
  	return @price
  end

  def update_total_sales
  	@@total_sales += @price
  end


end
