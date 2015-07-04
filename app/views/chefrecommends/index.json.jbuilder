json.array!(@chefrecommends) do |chefrecommend|
  json.extract! chefrecommend, :id, :name, :price, :img
  json.url chefrecommend_url(chefrecommend, format: :json)
end
