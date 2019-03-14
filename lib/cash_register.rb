require "pry"
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(ee_discount=0)
    @items = []

    @total = 0
    @discount = ee_discount

    @total
  end

  def add_item(title, price, quantity=1)
     @total += price * quantity
     @price = price

     quantity.times do
         @items << title
       end
  end

  def apply_discount
    if @discount > 0
       @total = @total * (1 - @discount * 0.01)
      #  binding.pry
       "After the discount, the total comes to $#{@total.round}."
    else
       "There is no discount to apply."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    @total = @total - @@prices.last.to_f
  end
end
