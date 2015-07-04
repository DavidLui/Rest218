json.array!(@congeeincasseroles) do |congeeincasserole|
  json.extract! congeeincasserole, :id, :name, :price, :img
  json.url congeeincasserole_url(congeeincasserole, format: :json)
end
