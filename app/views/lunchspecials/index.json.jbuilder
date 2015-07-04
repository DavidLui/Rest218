json.array!(@lunchspecials) do |lunchspecial|
  json.extract! lunchspecial, :id, :name, :price, :img
  json.url lunchspecial_url(lunchspecial, format: :json)
end
