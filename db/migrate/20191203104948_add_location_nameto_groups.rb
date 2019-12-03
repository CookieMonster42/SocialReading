class AddLocationNametoGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :location_name, :string
  end
end
