class CreateCitationProfits < ActiveRecord::Migration
  def change
    create_table :citation_profits do |t|
      t.references :citation, index: true
      t.references :profit, index: true

      t.timestamps
    end
  end
end
