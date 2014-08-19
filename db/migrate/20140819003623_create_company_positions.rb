class CreateCompanyPositions < ActiveRecord::Migration
  def change
    create_table :company_positions do |t|
      t.references :company, index: true
      t.references :position, index: true

      t.timestamps
    end
  end
end
