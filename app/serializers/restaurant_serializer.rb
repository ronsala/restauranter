class RestaurantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :street, :city, :state, :desc, :user_id, :live
end