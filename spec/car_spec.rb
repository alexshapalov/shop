require 'spec_helper'

describe Car do 
  let(:car) { Car.new("Tesla X", 120_000) }

  context '::attribute' do
    it 'car with name' do
      expect(car.name).to eq("Tesla X")
    end
  
    it 'car with price' do
      expect(car.price).to eq(120_000)
    end
  end

  context '::without attribute' do
    xit 'car without name' do
      car = Car.new(nil, 120_000)

      expect(car.name).to eq()
    end
  
    xit 'car without price' do
      expect(car.price).to eq(120_000)
    end
  end
end