Shop application: 

cart = Cart.new

car1 = Car.new("Tesla S",  120_000,  { type: "sport"} )
car2 = Car.new("Porhse",   190_000,  { type: "pass"} )

cart.add_items([car1, car2, car3, car4]) 

cart.save_to_file # save in DB

