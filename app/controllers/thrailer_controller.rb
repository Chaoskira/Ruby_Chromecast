class ThrailerController < ApplicationController
  def jouer
  	@film_id = 99861;
  	@film_detail = Tmdb::Movie.detail(@film_id);
  	@film_trailer = Tmdb::Movie.trailers(@film_id);
  	@film_similaire = Tmdb::Movie.similar_movies(@film_id);
  	@film_image = Tmdb::Movie.images(@film_id);
  	@num_trailer = 2;
  	@num = 0;
  	@source = "";
  end

  def suggestion
  end
end
