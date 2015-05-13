json.array!(@utilisateurs) do |utilisateur|
  json.extract! utilisateur, :id, :pseudo, :password, :mail
  json.url utilisateur_url(utilisateur, format: :json)
end
