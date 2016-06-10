
class CashRegister

attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def discount
    @discount
  end

  # def total(total)
  #  @total = total
  # end

  def add_item(item, price, quantity= 1)
    quantity.times {@item << item}
    @price = price
    @quantity = quantity
    @total = total + price * quantity
  end

  def apply_discount
    @total = @total - @total * discount / 100
    if discount != 0
    "After the discount, the total comes to $#{@total}."
    else
    "There is no discount to apply."
    end  
  end

  def items
    @all_items = @item 
  end

  def void_last_transaction
    @total = @total - @price
  end





end

