json.array!(@seafoods) do |seafood|
  json.extract! seafood, :id, :name, :price, :img
  json.url seafood_url(seafood, format: :json)
end
