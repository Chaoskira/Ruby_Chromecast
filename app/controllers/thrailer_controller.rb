class ThrailerController < ApplicationController
  def jouer
  	@film_id = params[:id];
  	@film_detail = Tmdb::Movie.detail(@film_id);
  	@film_trailer = Tmdb::Movie.trailers(@film_id);
  	@film_similaire = Tmdb::Movie.similar_movies(@film_id);
  	@film_image = Tmdb::Movie.images(@film_id);
  	@num_trailer = params[:source];
  end

  def suggestion
  end
end
