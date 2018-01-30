require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items
  #@@items = []
  self.items = []
  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
  end

  def add_item(item, price, qty = 1)
    if qty > 1
      multiples = Array.new(qty, item)
      multiples.each {|i| self.items << i}
    else
      self.items << item
    end
    self.total += price*qty
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = (1-self.discount.to_f/100)*self.total
      #binding.pry
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def self.items
    self.items
  end

end
