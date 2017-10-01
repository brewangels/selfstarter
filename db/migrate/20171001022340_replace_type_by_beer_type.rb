class ReplaceTypeByBeerType < ActiveRecord::Migration
  def up
    add_column :beers, :category, :string, null: false
    remove_column :beers, :type
  end

  def down
    add_column :beers, :type, :string
    remove_column :beers, :category
  end
end
