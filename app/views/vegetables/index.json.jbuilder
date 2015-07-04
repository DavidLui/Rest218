json.array!(@vegetables) do |vegetable|
  json.extract! vegetable, :id, :name, :price, :img
  json.url vegetable_url(vegetable, format: :json)
end
