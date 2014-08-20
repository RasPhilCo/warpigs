class CreateWorths < ActiveRecord::Migration
  def change
    create_table :worths do |t|
      t.integer :value
      t.date :date
      t.references :worthable, index: true
      t.string :worthable_type

      t.timestamps
    end
    add_index :worths, :worthable_type
  end
end
