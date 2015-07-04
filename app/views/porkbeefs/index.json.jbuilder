json.array!(@porkbeefs) do |porkbeef|
  json.extract! porkbeef, :id, :name, :price, :img
  json.url porkbeef_url(porkbeef, format: :json)
end
