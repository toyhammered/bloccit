class Rating < ActiveRecord::Base
  before_save { self.severity ||= :PG }

  has_many :ratingables
  belongs_to :rateable, polymorphic: true
  has_many :topics, through: :ratingables, source: :rateable, source_type: :Topic
  has_many :posts, through: :ratingables, source: :rateable, source_type: :Post


  enum severity: [:PG,:PG13,:R]

  def self.update_rating(rating_string)

  end


end
