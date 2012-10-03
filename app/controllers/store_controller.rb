class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @products = Product.order(:source)
  end
end
