class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :status
      t.string :region
      t.string :designation
      t.string :winemaker_profil
      t.string :deferred_remunation
      t.string :services, array: true
      t.integer :votes
      t.integer :profitability
      t.integer :share_available
      t.integer :investment_total
      t.integer :ticket_amount
      t.references :investment, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
