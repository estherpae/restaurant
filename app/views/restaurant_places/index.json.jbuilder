json.array!(@restaurant_places) do |restaurant_place|
  json.extract! restaurant_place, :name, :address
  json.url restaurant_place_url(restaurant_place, format: :json)
end
