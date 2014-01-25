json.array!(@produktkategories) do |produktkategory|
  json.extract! produktkategory, :id, :name, :projekt_id, :vorgaenger_id
  json.url produktkategory_url(produktkategory, format: :json)
end
