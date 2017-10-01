class Brewery < ActiveRecord::Base
  def untappd_profile
    @untappd_profile ||= Untappd::Brewery.info(untappd_id)
  end
end
