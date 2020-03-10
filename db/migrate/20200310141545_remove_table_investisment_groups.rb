class RemoveTableInvestismentGroups < ActiveRecord::Migration[6.0]
  def change
    drop_table :investments_groups
  end
end
