class OrderItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :count
end