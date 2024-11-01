class Restaurant < ApplicationRecord

  has_many :reviews, dependent: :destroy
  has_many :cuisines, dependent: :destroy
  accepts_nested_attributes_for :cuisines, allow_destroy: true
  attr_accessor :avg_rating

  include PgSearch::Model


  pg_search_scope :flexible_search,
                  against: [:name, :address],
                  associated_against: {
                      cuisines: [:name]
                  },
                  using: {
                      tsearch: { prefix: true } # Enables prefix searching
                  }

end
