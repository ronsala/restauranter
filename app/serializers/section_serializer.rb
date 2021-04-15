class SectionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :menu_id
end