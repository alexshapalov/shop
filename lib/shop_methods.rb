module ShopMethods
  module ClassMethods
    # extend self

    def class_met
      p "ClassMethods"
    end 

    def min_price
      120_000
    end
  end

  module InstanceMethods 
    def add_items(items)
    # unless items.price < self.class.min_price
      items.each do |i|  
        unless i.price < self.class.min_price 
          @items.push i 
        end
      end
    end
    
    def instance_met
      p 'InstanceMethods'
    end

    def remote_item
      @items.pop
    end

    def info
      p @items.price
    end

    def validate
      p "ClassMethods"
    end

    def method_missing(*methods_name)
      methods_name.each do |name|
        puts "method #{name} is not defined"
      end
    end
  end

  module Info
    def item_info(item)
      p item.name
      # p item.price
    end
  end

  # def self.included(base)
  #   base.extend(ClassMethods)
  #   base.class_eval do 
  #     include InstanceMethods
  #   end
  # end
end 

