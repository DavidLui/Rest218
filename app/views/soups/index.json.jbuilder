json.array!(@soups) do |soup|
  json.extract! soup, :id, :name, :price
  json.url soup_url(soup, format: :json)
end
