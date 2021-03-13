class MoviesController < ApplicationController
  def index
    if params[:query].present?
      @movies = Movie.search_by_movie_and_director(params[:query])
    else
      @movies = Movie.all
    end
  end
end
