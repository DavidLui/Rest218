json.array!(@shells) do |shell|
  json.extract! shell, :id, :name, :price, :img
  json.url shell_url(shell, format: :json)
end
