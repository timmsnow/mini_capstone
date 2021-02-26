require "http"

@response = HTTP.get("http://localhost:3000/api/chopsticks_path")

parsed_response = @response.parse

p parsed_response
