class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :title
      t.string :description
      t.integer :qty_available

      t.timestamps
    end
  end
end
