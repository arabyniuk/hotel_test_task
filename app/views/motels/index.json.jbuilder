json.array!(@motels) do |motel|
  json.extract! motel, :id, :title, :rating, :breakfast, :description, :price
  json.url motel_url(motel, format: :json)
end
