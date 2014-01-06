json.array!(@roadstops) do |roadstop|
  json.extract! roadstop, :id, :roadstopspart, :roadstopsdate, :projektid
  json.url roadstop_url(roadstop, format: :json)
end
