class Product < ActiveRecord::Base
  validates :description, :name, presence: true
  validates :price, numericality: {only_integer: true, greater_than: 0}

def formatted_price
  price_in_dollars = price.to_f/100
  format("%.2f", price_in_dollars)
end


end
