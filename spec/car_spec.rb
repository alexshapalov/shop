require 'rspec'
require_relative "../lib/car.rb"

describe Car do
  it 'create new item car' do
    hash = { type: "sport" }
    
    car_item = Car.new("Tesla", 120_000, hash)

    expect(car_item.name).to eq(car_item.name)
    expect(car_item.price).to eq(120_000)
  end
end
