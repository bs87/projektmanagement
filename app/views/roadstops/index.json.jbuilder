json.array!(@roadstops) do |roadstop|
  json.extract! roadstop, :id, :Roadstopspart, :Roadstopsdate, :ProjektID
  json.url roadstop_url(roadstop, format: :json)
end
