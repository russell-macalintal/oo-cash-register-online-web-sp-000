class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
  end

  def apply_discount
    if self.discount > 0
      self.total *= (1.0 - self.discount.to_f/100)
      message = "After the discount, the total comes to $#{self.total.to_i}."
    else
      message = "There is no discount to apply.""
  end
end
