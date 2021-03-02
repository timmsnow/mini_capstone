require "http"

@response = HTTP.get("http://localhost:3000/api/products/1")

# def destroy_product
#   product_id = params[:id]
#   product = Product.find(product_id)
#   product.destroy
#   render json: { message: "YOU KILLED THE PRODUCT" }
# end

parsed_response = @response.parse

p parsed_response
