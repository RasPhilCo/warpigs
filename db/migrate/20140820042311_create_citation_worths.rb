class CreateCitationWorths < ActiveRecord::Migration
  def change
    create_table :citation_worths do |t|
      t.references :citation
      t.references :worth, index: true

      t.timestamps
    end
  end
end
