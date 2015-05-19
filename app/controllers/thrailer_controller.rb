class ThrailerController < ApplicationController
  def jouer
  	@film_detail = Tmdb::Movie.detail(177572);
  	@film_trailer = Tmdb::Movie.trailers(177572);
  	@film_similaire = Tmdb::Movie.similar_movies(177572);
  	@film_image = Tmdb::Movie.images(177572);
  end

  def suggestion
  end
end
