json.array!(@aufgabens) do |aufgaben|
  json.extract! aufgaben, :id, :Aufgabenname, :Aufgabenbeschreibung, :Aufgabenebene, :ProjektID, :Arbeitspaket_ArbeitspaketID
  json.url aufgaben_url(aufgaben, format: :json)
end
