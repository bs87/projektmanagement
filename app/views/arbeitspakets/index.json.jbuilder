json.array!(@arbeitspakets) do |arbeitspaket|
  json.extract! arbeitspaket, :id, :arbeitspaketname, :arbeitspaketbeschreibung, :arbeitspaketverantwortlicher, :arbeitspakettyp, :arbeitspaketbeginn, :arbeitspaketdauer, :arbeitspaketende, :arbeitspaketnr, :arbeitspaketkuerzel, :arbeitspaketeingangsdokumente, :arbeitspaketausgangsdokumente, :aufgabeid, :verantwortlichkeiten_Arbeitsid
  json.url arbeitspaket_url(arbeitspaket, format: :json)
end
