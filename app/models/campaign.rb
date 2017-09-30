class Campaign < ActiveRecord::Base
  belongs_to :brewery
  has_many :beers
  has_many :cheers

  monetize :goal_cents
end
