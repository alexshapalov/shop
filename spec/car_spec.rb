# require 'rspec'
require_relative "../lib/car.rb"

describe Car do  
  context 'create new car' do

    before(:each) do
      @car_item = Car.new("Tesla", 120_000)
    end

    it 'car with name' do
      expect(@car_item.name).to eq("Tesla")
    end

    it 'car with price' do
      expect(@car_item.price).to eq(120_000)
    end
  end
end
