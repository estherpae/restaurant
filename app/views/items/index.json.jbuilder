json.array!(@items) do |item|
  json.extract! item, :name, :restaurant_place_id
  json.url item_url(item, format: :json)
end
