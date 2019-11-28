class AddLimitToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :max_members, :integer
  end
end
