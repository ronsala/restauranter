class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :total, restaurant_id
end