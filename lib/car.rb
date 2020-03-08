# require 'pry'

class Car
  attr_accessor :name, :price, :options

  def initialize(name=nil, price=nil, options = {})
    @name = name
    @price = price  
    @options = options
  end

  def item_name
    @name
  end

  def price
    @price
  end

  ALL_CUR = {
    uah: 26,
    eur: 31
  }
 
  def total_price
    @price * @ammount
  end

  def convertor
    cur = ALL_CUR[@cur]
    cur * total_price
  end

  def ccurrency
    ALL_CUR[@cur]
  end
end

# binding.pry

# Payments.name 
# car1 = Car.new("Tesla", 100_000)

# p car1.name # => "Tesla"
# p car1.name = "Tesla"
# p car1.name

#undefined method `name' for #<Car:0x00007fe214805ea0>

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
