class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    product_id = params[:id]
    @product = Product.find(product_id)
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:imgage_url],
      description: params[:description],
      rating: params[:rating],
    )
    @product.save
    render "show.json.jb"
  end

  def update
    product_id = params[:id]
    @product = Product.find(product_id)

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.rating = params[:rating] || @product.rating
    @product.save
    render "show.json.jb"
  end

  def destroy
    product_id = params[:id]
    product = Product.find(product_id)
    product.destroy
    render json: { message: "YOU KILLED THE PRODUCT" }
  end

  # def all_products_query_action
  #   input = params["query"]
  #   @product = Product.find_by(id: input)
  #   render "each_product.json.jb"
  # end
end
