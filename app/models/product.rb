class Product < ApplicationRecord
  #validations-
  # validates :image_url, presence: true
  # validates :name, presence: true, length: { minimum: 2 }
  # validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :description, length: { in: 5..500 }
  # validates :quantity, numericality: { greater_than: 0 }
  has_many :images
  has_many :orders

  belongs_to :supplier
  #longform version of above
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(product_id: id)
  # end

  #defines properties of model
  # def is_discounted?
  #   if price < 10
  #     return true
  #   else
  #     return false
  #   end
  # end

  # def taxes
  #   @taxes = (price * 0.09).round(2)
  # end

  # def total_cost
  #   total = @taxes + price
  #   dollars = total.round
  #   cents = total - dollars.round
  #   result = ""
  #   result += "the total cost is #{dollars} dollars" if total == dollars
  #   result += "the total cost is #{dollars} dollars and #{cents.round(2)} cents" if total != total.round
  # end
end
