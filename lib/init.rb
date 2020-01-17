require_relative 'shop_methods'
require_relative 'car'
require_relative 'cart'

cart = Cart.new

car1 = Car.new("Tesla S",  120_000,  { type: "sport"} )
car2 = Car.new("Porhse",   190_000,  { type: "pass"} )
car3 = Car.new("BMW x4",   180_000,  { type: "no"} )
car4 = Car.new("BMW x6",   180_000,  { type: "no"} )

p cart.add_items([car1, car2, car3, car4]) # Buy
p cart.save_to_file # save in DB




























# item1.methods - Object.methods
# item1.item_info(item1) 
# puts item1.price
# puts item2.price
# puts item3.price

# p cart.methods 
# p item1.methods 

# cart.add_items([item1, item2, item3])

# cart.save_to_file
# cart.read_from_file 

#Dir.mkdir("/tmp")
# Dir.exists?('/data_base')

# Ruby Reflection - #kind_of?, #respond_to?, #send 
# Object Methods

# p cart.kind_of?(Cart)
# p cart.respond_to?(:save_to_file)
# p cart.send

