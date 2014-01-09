json.array!(@offices) do |office|
  json.extract! office, :id, :name, :address, :date_creation
  json.url office_url(office, format: :json)
end
