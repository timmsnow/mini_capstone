Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/all_products_path" => "products#all_products_action"
    get "/rice_cooker_path" => "products#rice_cooker_action"
    get "/chopsticks_path" => "products#chopsticks_action"
    get "/all_products_query" => "products#all_products_query_action"
    get "/all_products_query/:query" => "products#all_products_query_action"
  end
end
