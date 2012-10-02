class StoreController < ApplicationController
  def index
    @products = Product.order(:source)
  end
end
