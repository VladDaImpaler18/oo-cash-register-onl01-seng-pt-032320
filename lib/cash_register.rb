require 'pry'

class CashRegister
  
  attr_accessor :discount, :total, :items, :last_transaction
    
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

<<<<<<< HEAD
=======
  def total
    @items.each{ |name, price, quantity| self.total += price * quantity}
    @total
  end
  
>>>>>>> 9f6a96ca81bab438f0c1133d5eae9a8b40837bb8
  def add_item(name, price, quantity = 1) #each ITEM = [name,price,quantity]
    #binding.pry
    item = [name, price, quantity]
    self.total += price * quantity
    self.last_transaction = price * quantity
    
    @items << item
  end
    
  def apply_discount
    if discount !=0
      discount = @total * (@discount.to_f/100)
      @total = @total - discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
    
<<<<<<< HEAD
  def items
   @items.collect{ |item| (item[0].split * item[2])}.flatten
  end
  
  def void_last_transaction
    @total -= @last_transaction
    #@items.pop
  end
=======
    def items
     @items.collect{ |item| (item[0].split * item[2])}.flatten
    end
    
    def void_last_transaction
      binding.pry
      #@items.pop
    end
>>>>>>> 9f6a96ca81bab438f0c1133d5eae9a8b40837bb8
end
