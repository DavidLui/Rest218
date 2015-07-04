json.array!(@lomeins) do |lomein|
  json.extract! lomein, :id, :name, :price, :img
  json.url lomein_url(lomein, format: :json)
end
