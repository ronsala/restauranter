json.extract! order, :id, :total, :restaurant_id, :patron_id, :created_at, :updated_at
json.url order_url(order, format: :json)
