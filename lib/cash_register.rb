require 'pry'

class CashRegister

  attr_accessor :total, :employee_discount, :price, :item

  def initialize(employee_discount = nil)
    @total = 0
    @employee_discount = employee_discount
    @quantity = []
  end

  def add_item(price, item, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end
end
