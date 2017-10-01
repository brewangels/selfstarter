class CheerOrder < ActiveRecord::Base
  belongs_to :user
  belongs_to :campaign
  belongs_to :cheer
end
