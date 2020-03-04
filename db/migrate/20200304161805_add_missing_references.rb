class AddMissingReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :investments, :offered_service, null: false, foreign_key: true
    add_reference :investments, :investments_group, null: false, foreign_key: true
    add_reference :investments, :group, null: false, foreign_key: true
  end
end
