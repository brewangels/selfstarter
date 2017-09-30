class AddTitleToCheers < ActiveRecord::Migration
  def change
    add_column :cheers, :title, :string
  end
end
