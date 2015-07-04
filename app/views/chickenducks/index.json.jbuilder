json.array!(@chickenducks) do |chickenduck|
  json.extract! chickenduck, :id, :name, :price, :img
  json.url chickenduck_url(chickenduck, format: :json)
end
