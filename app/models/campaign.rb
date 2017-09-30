class Campaign < ActiveRecord::Base
  belongs_to :brewery

  monetize :goal_cents
end
