class Movie < ApplicationRecord
  belongs_to :director

  include PgSearch::Model


  pg_search_scope :search_by_movie_and_director,
  against: [ :title, :synopsis ],
  associated_against: {
    director: [ :first_name, :last_name ]
  },
  using: {
      :trigram => {},
      :dmetaphone => {},
      :tsearch => { :prefix => true }
  }

  multisearchable against: [:title, :synopsis]
end
