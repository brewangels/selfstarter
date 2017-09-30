class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :short_description
      t.string :untappd_id
      t.float :rating
      t.string :location

      t.timestamps
    end
  end
end
