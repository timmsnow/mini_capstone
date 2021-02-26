class Api::ProductsController < ApplicationController
  def all_products_action
    @products = Product.all
    render "products.json.jb"
  end

  def rice_cooker_action
    @product = Product.find_by(name: "rice cooker")
    render "rice_cooker.json.jb"
  end

  def chopsticks_action
    @product = Product.find_by(name: "chopsticks")
    render "chopsticks.json.jb"
  end

  def all_products_query_action
    input = params["query"]
    @product = Product.find_by(id: input)
    render "each_product.json.jb"
  end
end
