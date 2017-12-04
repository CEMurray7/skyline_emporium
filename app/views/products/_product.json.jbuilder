json.extract! product, :id, :name, :description, :price, :created_at, :updated_at, :avatar
json.url product_url(product, format: :json)
