json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :address, :phone_no, :opening_time
  json.url restaurant_url(restaurant, format: :json)
end
