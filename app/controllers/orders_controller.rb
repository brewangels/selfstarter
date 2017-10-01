class OrdersController < ApplicationController
  def new
    @campaign = Campaign.find(params[:campaign_id])
    @cheer = Cheer.find(params[:cheer_id])
  end
end
