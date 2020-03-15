require_relative 'new_orders.rb'

class Order
  # include NewOrders

  attr_accessor :price, :cur, :ammount
  
  def initialize(params = {})
    @price = params[:price]
    @cur = params[:cur] || :eur
    @ammount = params[:ammount]
  end

  ALL_CUR = {
    eur: 1.1,
    uah: 26,
    rub: 60
  }
 
  def total_price_in_usd
    @price * @ammount
  end

  def convert
    cur = ALL_CUR[@cur]
    cur * total_price_in_usd
  end
end

# order = Order.new({price: 100, cur: :uah, ammount: 20})
# p order.total_price_in_usd
# p order.convert
