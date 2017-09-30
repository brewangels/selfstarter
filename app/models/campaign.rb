class Campaign < ActiveRecord::Base
  belongs_to :brewery
  has_many :beers

  monetize :goal_cents
end
