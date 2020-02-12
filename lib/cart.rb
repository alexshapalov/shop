class Cart
  attr_reader :items

  extend ShopMethods::ClassMethods 
  include ShopMethods::InstanceMethods 

  def initialize(owner=nil, items = [])
    @items = items   
    @owner = owner
  end

  def save_to_file 
    save
  end

  private

  def save
    @date = Time.now
    File.open("./data_base/#{@date}_cart.csv", "w") do |f|
      @items.each { |i| f.puts "Car: #{i.name}:, price: #{i.price}, #{i.options}" }
    end
  end
end
