class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :longname
      t.string :shortname

      t.timestamps
    end
    add_index :positions, :shortname
  end
end
