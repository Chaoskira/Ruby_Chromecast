class ThrailerController < ApplicationController
  def jouer
  	@film_detail = Tmdb::Movie.detail(params[:id]);
  	@film_trailer = Tmdb::Movie.trailers(params[:id]);
  	@film_similaire = Tmdb::Movie.similar_movies(params[:id]);
  	@film_image = Tmdb::Movie.images(params[:id]);
  end

  def suggestion
  end
end
