json.array!(@chefs) do |chef|
  json.extract! chef, :id, :name, :image_url
  json.url chef_url(chef, format: :json)
end
