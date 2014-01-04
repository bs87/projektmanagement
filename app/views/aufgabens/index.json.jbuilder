json.array!(@aufgabens) do |aufgaben|
  json.extract! aufgaben, :id, :aufgabenname, :aufgabenbeschreibung, :aufgabenrang, :aufgabennr, :projektsid
  json.url aufgaben_url(aufgaben, format: :json)
end
