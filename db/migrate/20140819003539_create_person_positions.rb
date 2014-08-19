class CreatePersonPositions < ActiveRecord::Migration
  def change
    create_table :person_positions do |t|
      t.references :person, index: true
      t.references :position, index: true

      t.timestamps
    end
  end
end
