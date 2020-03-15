require 'spec_helper'

require_relative "../lib/order.rb"

describe Order do 
  let(:order) { Order.new(price: 100, cur: :uah, ammount: 20) }

  def method_name
    
  end
  
  context '::attribute' do
    it '.total_price' do
      total = order.total_price_in_usd
      expect(total).to eq(2000)
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
  
    xit '.convert to nonexistant' do
      order = Order.new(price: 100, cur: :som, ammount: 20)
      convprice = order.convert
      # expect(convprice).should raise_error::Error)

      # expect { raise StandardError }.to raise_error
    end
  end
end