class CreateInvestmentGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :investment_groups do |t|
      t.references :investment, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
