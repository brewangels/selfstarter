class CampaignsController < ApplicationController
  def show(id)
    @campaign = Campaign.find(id)
  end

  def index
    @campaigns = Campaign.all
    render
  end
end
