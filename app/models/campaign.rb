class Campaign < ActiveRecord::Base
  belongs_to :brewery
  has_many :beers
  has_many :cheers
  has_many :cheer_orders

  monetize :goal_cents

  def pledged_amount
    @pledged_amount ||= begin
                          amount = cheer_orders.includes(:cheer).sum(:value_cents)
                          Money.new(amount, goal_currency)
                        end
  end

  def pledged_percentage
    (100 * pledged_amount / goal).to_i
  end
end
