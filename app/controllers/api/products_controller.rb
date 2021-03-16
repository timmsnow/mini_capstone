class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    #this code will require user to authenticate to view the index
    # if current_user
    #   @products = Product.all
    #   render "index.json.jb"
    # else
    #   render json: []
    # end

    #this code provides parameters for a search query as well as how it should be sorted
    #this code declares how we want our queried index displayed
    # if params[:search]
    #   @products = Product.where("name ILIKE ?", "%#{params[:search]}%")
    # end
    # if params[:sort]
    #   @products = Product.all.order(price: :asc)
    # end
    @products = Product.all
    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end
    # @products = Product.where("name ILIKE ?", "%#{params[:search]}%")
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
      # image_url: params[:image_url],
      description: params[:description],
      supplier_id: params[:supplier_id],
      rating: params[:rating],
      quantity: params[:quantity],
    )

    #Happy/Sad Path
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 400
    end
  end

  def update
    product_id = params[:id]
    @product = Product.find(product_id)

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    # @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
    @product.rating = params[:rating] || @product.rating

    #Happy/Sad Path
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 400
    end
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
