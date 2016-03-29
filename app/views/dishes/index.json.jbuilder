json.array!(@dishes) do |dish|
  json.extract! dish, :id, :restaurant_id, :rank, :name
  json.url dish_url(dish, format: :json)
end
