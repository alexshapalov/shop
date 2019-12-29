class Cart
  attr_reader :items

  include ShopMethods
  #include ItemShop::ClassMethods 
  #include ItemShop::InstanceMethods 

  def initialize(owner=nil)
    @items = Array.new
    @owner = owner
  end

  # def add_items(items)
  #   # unless items.price < self.class.min_price
  #     items.each do |i|  
  #       unless i.price < self.class.min_price 
  #         @items.push i 
  #       end
  #     end
  # end

  # def price_info(items)
    # items.each{|i| p @items}
  # end

  def save_to_file 
    class_met
    instance_met
    save
  end

  def read_from_file
    read
  end

  private

  def save
    @date = Time.now
    File.open("../data_base/#{@date}_cart.txt", "w") do |f|
      @items.each { |i| f.puts "Car: #{i.name}:, price: #{i.price}, #{i.options}" }
    end
  end

  def read
    return unless File.exist?("../tmp/#{@date}_cart.txt")
    item_fields = File.readlines("../tmp/#{@date}_cart.txt") 
  end
end
