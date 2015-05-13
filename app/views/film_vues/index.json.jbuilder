json.array!(@film_vues) do |film_vue|
  json.extract! film_vue, :id, :id_utilisateur, :id_film
  json.url film_vue_url(film_vue, format: :json)
end
