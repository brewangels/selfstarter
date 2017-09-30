class Cheer < ActiveRecord::Base
  belongs_to :campaign

  monetize :value_cents
end
