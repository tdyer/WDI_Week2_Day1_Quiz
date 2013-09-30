require_relative 'order_item'
require_relative 'product_type'
require_relative 'log'

class Order
	include Log

	@@sum_of_all_orders = 0
	@@order_count = 0

	attr_accessor :order_id, :customer, :order_items, :sum_of_all_orders, :order_count

  def initialize(order_id, customer)
  	@order_id = order_id
  	@customer = customer
  	@order_items = []
  	calculate_price
  	@@sum_of_all_orders += @price
  	@@order_count += 1
  end

  def to_s
  	@description = "#{@order_id}: #{@order_items}"
  	return @description
  end

  def complete_xaction
  	Log::entry(@description)
  end

  def calculate_price
  	@order_items.each do |item|
  		@price += item.unit_price
  	end
  	return @price
  end


end
