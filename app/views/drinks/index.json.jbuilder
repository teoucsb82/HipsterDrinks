json.array!(@drinks) do |drink|
  json.extract! drink, :id, :user_id, :name, :description
  json.url drink_url(drink, format: :json)
end
