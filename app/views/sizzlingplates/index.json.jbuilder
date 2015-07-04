json.array!(@sizzlingplates) do |sizzlingplate|
  json.extract! sizzlingplate, :id, :name, :price, :img
  json.url sizzlingplate_url(sizzlingplate, format: :json)
end
