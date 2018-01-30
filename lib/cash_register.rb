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
    @total -= @discount*@total
  end
  

end
