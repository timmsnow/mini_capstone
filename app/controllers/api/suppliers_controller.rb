class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    if params[:search]
      @suppliers = Supplier.where("name ILIKE ?", "%#{params[:search]}%")
    end
    render "index.json.jb"
  end

  def show
    supplier_id = params[:id]
    @supplier = Supplier.find(supplier_id)
    render "show.json.jb"
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      phone_number: params[:phone_number],
      email: params[:email],
    )

    #Happy/Sad Path
    if @supplier.save
      render "show.json.jb"
    else
      render json: { errors: @supplier.errors.full_messages }, status: 400
    end
  end

  def update
    supplier_id = params[:id]
    @supplier = Supplier.find(supplier_id)

    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number

    #Happy/Sad Path
    if @supplier.save
      render "show.json.jb"
    else
      render json: { errors: @supplier.errors.full_messages }, status: 400
    end
  end

  def destroy
    supplier_id = params[:id]
    supplier = Supplier.find(supplier_id)
    supplier.destroy
    render json: { message: "YOU KILLED THE PRODUCT" }
  end
end
