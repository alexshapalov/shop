require 'rspec'
require_relative "../lib/car.rb"
require "factory_bot"
#require "./factories"

require_relative "../spec/factories/car_spec.rb"
include FactoryBot::Syntax::Methods
# require "./spec/factories"

describe Car do 
  let(:car) { build(:car)  }
  # let(:car) { stub = build_stubbed(:car)  }
  
  describe '::attribute' do
    before(:each) do
      #@car_item = Car.new("Tesla", 120_000)
      # car = build(:car)
      # car.price = 111_000
      # car.name = "ss"
    end 
    
    it 'car with name' do
      expect(car.name).to eq("Tesla")
    end
  
    it 'car with price' do      
      expect(car.price).to eq(110_000)
    end
  end
end
