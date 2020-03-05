class AddMissingReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :investments, :group, foreign_key: true
  end
end
