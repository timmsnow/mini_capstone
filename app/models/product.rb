class Product < ApplicationRecord
  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def taxes
    @taxes = (price * 0.09).round(2)
  end

  def total_cost
    total = @taxes + price
    dollars = total.round
    cents = total - dollars.round
    result = ""
    result += "the total cost is #{dollars} dollars" if total == dollars
    result += "the total cost is #{dollars} dollars and #{cents.round(2)} cents" if total != total.round
  end
end
