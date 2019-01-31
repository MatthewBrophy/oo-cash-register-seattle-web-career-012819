require 'pry'

class CashRegister

  attr_accessor :total, :discount, :item_list, :last_transaction

  

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount
    @item_list = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times { @item_list << title }
    self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount != 0
      @total = self.total * ((100.0 - discount.to_f) / 100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      'There is no discount to apply.'
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    self.total = self.total - last_transaction
  end
end
