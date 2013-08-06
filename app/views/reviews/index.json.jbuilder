json.array!(@reviews) do |review|
  json.extract! review, :contents, :user_id, :item_id, :restaurant_place_id
  json.url review_url(review, format: :json)
end
