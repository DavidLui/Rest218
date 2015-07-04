json.array!(@ricedishes) do |ricedish|
  json.extract! ricedish, :id, :name, :price, :img
  json.url ricedish_url(ricedish, format: :json)
end
