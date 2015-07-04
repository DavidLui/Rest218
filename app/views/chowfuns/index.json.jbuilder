json.array!(@chowfuns) do |chowfun|
  json.extract! chowfun, :id, :name, :price, :img
  json.url chowfun_url(chowfun, format: :json)
end
