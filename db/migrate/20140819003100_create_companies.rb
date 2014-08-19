class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :longname
      t.string :shortname
      t.references :country, index: true

      t.timestamps
    end
    add_index :companies, :shortname
  end
end
