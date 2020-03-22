require 'spec_helper'

require_relative "../lib/data.rb"

describe Data_Json do
  before do 
    order_id = Data_Json.new.orders
    @order_one = order_id[0]
    @order_two = order_id[1]

    @city = @order_one[:city]
  end

  # expect(expectation_event_ex.reload.status_finished?).to be_truthy

  context '::orders' do 
    it 'order id' do
      expect(total).to eq(1)
    end

    it 'order id2' do
      expect(@order_two[:id]).to eq(2)
    end

    it 'order city' do
      expect(@city).to eq("East Rutherford")
    end
  end

end
