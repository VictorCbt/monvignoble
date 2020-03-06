class ChangeColNameController < ActiveRecord::Migration[6.0]
  def change
    remove_column :users_groups, :share_amount
    add_column :users_groups, :status, :string
  end
end
