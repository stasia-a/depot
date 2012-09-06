class StoreController < ApplicationController
  skip_before_filter :authorize

  def index
    @products = Product.order(:title) 
    # @count = increment_count
    @cart = current_cart
  end

  private
    def increment_count
      session[:counter] ||= 0
      session[:counter] += 1
    end
end
