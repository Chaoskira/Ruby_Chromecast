class RechercheController < ApplicationController
  def rechercher
  	@dernier_films = Tmdb::Movie.now_playing;
  end

  def afficher
  end
end
