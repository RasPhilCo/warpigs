class CreateWars < ActiveRecord::Migration
  def change
    create_table :wars do |t|
      t.string :name
      t.date :begin_at
      t.date :end_at
      t.integer :total_cost

      t.timestamps
    end
    add_index :wars, :name
  end
end
