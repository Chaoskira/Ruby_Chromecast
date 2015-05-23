class RechercheController < ApplicationController
  def rechercher
  	@dernier_films = Tmdb::Movie.now_playing;
  	@index = 0;
  end

  def afficher
  end
end
