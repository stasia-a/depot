class LineItem < ActiveRecord::Base
  attr_accessible :product_id, :quantity, :price, :oredr_id

  belongs_to :order
  belongs_to :cart
  belongs_to :product

  def total_price
    product.price * quantity
  end

end
