class PagesController < ApplicationController
  def home
    if params[:query].present?
      @results = PgSearch.multisearch(params[:query])
    end
  end
end
