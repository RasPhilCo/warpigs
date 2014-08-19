class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :longname
      t.string :shortname
      t.string :continent

      t.timestamps
    end
    add_index :countries, :shortname
  end
end
