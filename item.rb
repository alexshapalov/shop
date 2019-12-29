require 'pry'

class Item
  attr_accessor :name, :price, :options

  include ShopMethods
  # include ItemShop::Info

  def initialize(name, price, options = {})
    @name = name
    @price = price  
    @options = options
  end
 
  # def self.price 
  #   100
  # end

  # def validate
  #   if options[:price] < self.class.price
  #     p 'Yes'
  #   else
  #     p 'no'
    # end
  # end
end


# binding.pry

# car = Item.new("Tesla", 100_000)
# p car.class
# p car.class.class
# p car.class.superclass
# p car.class.class
# p car.class.superclass.superclass 
# p car.name
# p car.options[:price]
# # p car.validate

# p Item.methods
# p '--------------'
# p Item.instance_methods
# p '--------------'
# p Item.singleton_methods
# p '--------------'
# p Item.instance_variables 
# p '--------------'
# p Item.class_variables 
