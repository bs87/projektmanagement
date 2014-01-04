json.array!(@arbeitspakets) do |arbeitspaket|
  json.extract! arbeitspaket, :id, :arbeitspaketname, :arbeitspaketbeschreibung, :arbeitspaketverantwortlicher, :arbeitspaketbeginn, :arbeitspaketdauer, :arbeitspaketende, :arbeitspaketnr, :arbeitspaketkuerzel, :eingangsdokumente, :ausgangsdokumente, :aufgabeid, :verantwortlichkeitenid
  json.url arbeitspaket_url(arbeitspaket, format: :json)
end
