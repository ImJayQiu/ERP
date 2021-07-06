class CreateMedicalsupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :medicalsupplies do |t|
      t.date :date
      t.string :item
      t.integer :quantity
      t.string :unit
      t.string :province
      t.text :remark

      t.timestamps
    end
  end
end
