class Api::ProductsController < ApplicationController
  def all_products_action
    @products = Product.all

    render "products.json.jb"
  end
end
