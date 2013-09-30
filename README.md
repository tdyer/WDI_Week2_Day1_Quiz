# Week2 Day 1 Grocery Store Order tracker

###Type:
- Quiz

###Time Required:
- 30 minutes

###Prerequisites:
- Ruby
  - Objects/Classes
  - Initializer
  - Accessors
  - Multi-file projects ('require')

###Objectives:
- Split a ruby application into multiple files.

###Activity:
- We have a small grocery store that would like to keep track of all
  orders.

###Explanation
- You are going to create grocery orders
- Make git commits as you finish each phase, so you can see the history

###Specification:
#####Object Specs:
- Product Type:
	- A product type should have an id.
	- A product type should have a name.
	- A product type should have a price.
	- A product type should have a description (optional).

- Order Item:
  - An order item should have a product type.
  - An order item should have a quantity of the product type ordered. 
  - An order item should have a unit price (this may be different than the
    product price)

- Order
  - And order should have an order id
  - And order should have one or more order items.
  - And order should have a complete_xaction method that will log (see
    below)..

- Log:
	- A log entry should be created for each product type created.
	- A log entry should be created for each order. Logging the order
      including it's order items.
    - Each log entry should be shown on the command line for each order.

#####Phase 1####
- Define classes, including a Log mixin.

#####Phase 2 
- Calcuate the price of one order.
- Keep a running sum of all orders, (use Array#inject method?).

#####Extra 
- Keep all the classes in the GA  namespace.
- How could one use inheritence to improve the design of the product
  type?
- Log to the OSX 'say' command as well as to stdout.

###Post-mortem:
- What worked?




