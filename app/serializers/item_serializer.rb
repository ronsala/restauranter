class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :desc, :section_id
end