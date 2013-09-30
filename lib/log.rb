# - Log:
# 	- A log entry should be created for each product type created.
# 	- A log entry should be created for each order. Logging the order
#       including its order items.
#     - Each log entry should be shown on the command line for each order.

module Log

	def log_product_type(new_product_type)
		return "New product type created: #{new_product_type}"
	end

	def log_order(new_order)
		return "New order created: #{new_order}"
	end

end