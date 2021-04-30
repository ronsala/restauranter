json.extract! patron, :id, :first_name, :last_name, :street, :city, :state, :created_at, :updated_at
json.url patron_url(patron, format: :json)
