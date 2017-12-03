class Product < ActiveRecord::Base
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }


  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates :description, :name, presence: true
  validates :price, numericality: {only_integer: true, greater_than: 0}

def formatted_price
  price_in_dollars = price.to_f/100
  format("%.2f", price_in_dollars)
end


end
