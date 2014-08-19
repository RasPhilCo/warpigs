class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :title
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :suffix
      t.string :commonname
      t.string :gender
      t.string :ethnicity
      t.reference :country, index: true

      t.timestamps
    end
    add_index :people, :lastname
    add_index :people, :commonname
  end
end
