require_relative 'new_orders.rb'

class Order
  include NewOrders

  attr_accessor :price, :cur, :ammount
  
  def initialize(params = {})
    @price = params[:price]
    @cur = params[:cur]
    @ammount = params[:ammount]
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
end

order = Order.new(price: 100, cur: :uah, ammount: 20)
p order.total_price
p order.convertor
