require 'spec_helper'
require_relative "../spec/factories/car_spec.rb"

require_relative "../lib/shop_methods"
require_relative '../lib/car'
require_relative "../lib/cart" 

describe Cart do
  let(:item1) { build(:car) }
  let(:item2) { build(:car) }
  let(:cart) { Cart.new() }

 context "Test adding an item to a cart" do
    it "Add a car in the cart" do
      our_cart = cart.add_items([item1, item2])

      expect(our_cart).to include(item1, item2)
    end
  end
end