class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :order_items, :order_type, :restaurant_id
end