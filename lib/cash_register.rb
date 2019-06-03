class CashRegister

attr_accessor :total, :discount, :items, :price #:with_discount_total 

def initialize (discount = 0)
  @total = 0
  @discount = discount
  @items = []
  @price = []
  #@with_discount_total = self.total -= self.discount * self.total
end

def add_item (title, price, quantity = 1)
  self.total += price * quantity
  quantity.times do 
    self.items << title 
  end
end 

def apply_discount 
  if self.discount == 0 
    
    "There is no discount to apply." 
  else 
    rate = self.discount * 0.01
    self.total -= self.total * rate
    
    "After the discount, the total comes to $#{self.total.to_i}."
    
    
    #puts "After the discount, the total comes to $#{self.with_discount_total}."
  end
end

def void_last_transaction 
  transactions = {}
  
  transactions.each do |transaction| 
    transactions[self.item] = self.price(transactions)
  end
  
  


end



end 
