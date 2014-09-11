json.array!(@problemas) do |problema|
  json.extract! problema, :id, :nombre
  json.url problema_url(problema, format: :json)
end
