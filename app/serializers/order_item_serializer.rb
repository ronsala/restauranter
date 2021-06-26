class OrderItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :count, :order_id, :item_id
end