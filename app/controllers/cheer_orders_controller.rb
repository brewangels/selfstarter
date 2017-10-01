class CheerOrdersController < ApplicationController
  def new
    @campaign = Campaign.find(params[:campaign_id])
    @cheer = @campaign.cheers.find(params[:cheer_id])
    @cheer_order = CheerOrder.new(
      campaign: @campaign,
      cheer: @cheer
    )
  end

  def create
    campaign = Campaign.find(params[:campaign_id])
    cheer = campaign.cheers.find(params[:cheer_id])
    CheerOrder.create!(
      user: User.first,
      campaign: campaign,
      cheer: cheer
    )
    redirect_to campaign_path(campaign)
  end
end
