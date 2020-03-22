require 'spec_helper'

require_relative "../lib/order.rb"

describe Order do 
  let(:order) { Order.new(price: 100, cur: :uah, ammount: 20) }
  
  # before do
  #   order = Order.new(price: 100, cur: :uah, ammount: 20)
  #   @total = order.total_price_in_usd

  #   @var1 = 1
  #   @var2 = 2
  #   @var3 = 3 
  #   @var4 = 4 
  # end

  def total_met
    order = Order.new(price: 100, cur: :uah, ammount: 20)
    @total = order.total_price_in_usd

    # @var1 = "ssddd" 
    # @var2 = "ssddd" 
    # @var3 = "ssddd" 
    # @var4 = "ssddd" 
  end

  context '::attribute' do
    it '.total_price' do
      # total_met
      #total = order.total_price_in_usd
      expect(@var1).to eq(1)
    end
  end

  # Price in Different Curency
  context '.convert' do
    it '.convert to uah' do
      convprice = order.convert
      expect(convprice).to eq(52000)
    end

    it '.convert to eur' do
      order = Order.new(price: 100, cur: :eur, ammount: 20)
      convprice = order.convert
      expect(convprice).to eq(2200)
    end

    it '.convert to default value' do
      order = Order.new(price: 100, cur: nil, ammount: 20)
      convprice = order.convert
      expect(convprice).to eq(2200)
    end
  
    it '.convert to nonexistant' do
      order = Order.new(price: 100, cur: :eur, ammount: 0)

      expect(order.convert).to eq(0)

      # expect { raise StandardError }.to raise_error
    end
  end
end