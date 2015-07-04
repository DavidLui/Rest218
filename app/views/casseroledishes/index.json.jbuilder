json.array!(@casseroledishes) do |casseroledish|
  json.extract! casseroledish, :id, :name, :price, :img
  json.url casseroledish_url(casseroledish, format: :json)
end
