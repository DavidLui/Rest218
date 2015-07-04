json.array!(@riceincasseroles) do |riceincasserole|
  json.extract! riceincasserole, :id, :name, :price, :img
  json.url riceincasserole_url(riceincasserole, format: :json)
end
