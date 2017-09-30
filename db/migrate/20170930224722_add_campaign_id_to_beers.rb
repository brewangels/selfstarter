class AddCampaignIdToBeers < ActiveRecord::Migration
  def change
    add_reference :beers, :campaign
  end
end
