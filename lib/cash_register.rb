require 'pry'
class CashRegister
  attr_accessor :total, :discount
  @@items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, qty = 1)
    @@items << item
    @total += price*qty
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = (1-@discount.to_f/100)*@total
      #binding.pry
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end


end
