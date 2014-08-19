class CreateCountryWars < ActiveRecord::Migration
  def change
    create_table :country_wars do |t|
      t.references :war, index: true
      t.references :country, index: true

      t.timestamps
    end
  end
end
