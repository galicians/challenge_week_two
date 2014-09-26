dish --> name, price
order --> has some dishes, and their quantities
menu
takeaway
lineitem --> dish
customer

LineItem
def initialize(dish, quantity)
@dish = dish
@quantity = quantity
end
def total
@dish.price * @quantity
end
end

burgers = LineItems.new(burger, 34)

