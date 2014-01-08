json.array!(@projektes) do |projekte|
  json.extract! projekte, :id, :name, :status, :kosten, :projektstart, :projektende
  json.url projekte_url(projekte, format: :json)
end
