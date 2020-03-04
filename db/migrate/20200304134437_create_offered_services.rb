class CreateOfferedServices < ActiveRecord::Migration[6.0]
  def change
    create_table :offered_services do |t|
      t.string :title
      t.text :description
      t.references :investment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
