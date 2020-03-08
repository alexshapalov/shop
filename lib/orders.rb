require_relative 'new_orders.rb'

class Orders 
  extend NewOrders

  def orders
    Orders.orders
  end
  
  def self.complete
    orders
      .select { |o| o[:price] > 100 && o[:confirmed]}
      .reject { |o| o[:amount] < 20 }
      .sort_by { |o| o[:due_date] }
      # .each { |o| OrderProcessor.call(o) }  
      .then(&OrderProcessor.method(:call))
  end
end

class OrderProcessor
  def self.call(orders)
    orders
  end
end

p Orders.complete
