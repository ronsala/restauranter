class MenuSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :restaurant_id
end