class CampaignsController < ApplicationController
  def show
    @campaign = Campaign.find(params[:id])
  end

  def index
    @campaigns = Campaign.all
  end
end
