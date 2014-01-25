json.array!(@produkts) do |produkt|
  json.extract! produkt, :id, :name, :typ, :ap_id, :kat_id
  json.url produkt_url(produkt, format: :json)
end
