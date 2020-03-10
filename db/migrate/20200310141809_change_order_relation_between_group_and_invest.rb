class ChangeOrderRelationBetweenGroupAndInvest < ActiveRecord::Migration[6.0]
  def change
    remove_column :investments, :group_id
    add_reference :groups, :investment, foreign_key: true
  end
end
