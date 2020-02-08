require_relative 'shop_methods'
require_relative 'car' 
require_relative 'cart'

cart = Cart.new

car1 = Car.new("Tesla S",  120_000,  { type: "sport"} )
car2 = Car.new("Porhse",   190_000,  { type: "pass"} )
car3 = Car.new("BMW x4",   180_000,  { type: "no"} )
car4 = Car.new("BMW x6",   180_000,  { type: "no"} )

p cart.add_items([car1, car2, car3, car4]) # Buy

if cart.save_to_file # save in DB
  puts 'Save ok'
else
  puts "Eror"
end
