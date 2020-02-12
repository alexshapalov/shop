require 'rspec'
require_relative "../lib/car.rb"
require "factory_bot"
# require "../spec/factories"
require_relative "../spec/factories/car_spec.rb"
include FactoryBot::Syntax::Methods

describe Car do 
  let(:car) { build(:car) }

  describe '::attribute' do
    # before(:each) do
    #   @car_item = Car.new("Tesla", 120_000)
    # end 
    
    it 'car with name' do
      build(:car).name # Jane Doe
    end
  
    it 'car with price' do
      expect(car.price).to eq(120_000)
    end
  end
end
