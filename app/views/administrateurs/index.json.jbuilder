json.array!(@administrateurs) do |administrateur|
  json.extract! administrateur, :id, :pseudo, :password, :mail
  json.url administrateur_url(administrateur, format: :json)
end
