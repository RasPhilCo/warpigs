class CreateProfits < ActiveRecord::Migration
  def change
    create_table :profits do |t|
      t.integer :gain
      t.date :begin_at
      t.date :end_at
      t.references :profitable, index: true
      t.references :war, index: true
      t.string :profitable_type

      t.timestamps
    end
  end
end
