class RestaurantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :street, :city, :state, :desc
end