class CreateInvestments < ActiveRecord::Migration[6.0]
  def change
    create_table :investments do |t|
      t.string :investment_name
      t.text :punchline
      t.string :winemaker_name
      t.string :domaine_name
      t.text :description
      t.boolean :bio
      t.string :region
      t.string :designation
      t.integer :ticket_amount
      t.integer :investment_total
      t.integer :share_available
      t.integer :total_share
      t.integer :profitability
      t.string :remuneration
      t.string :winemaker_profile
      t.boolean :deferred_remuneration
      t.date :date_of_end
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
