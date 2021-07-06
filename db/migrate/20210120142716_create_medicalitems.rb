class CreateMedicalitems < ActiveRecord::Migration[6.0]
  def change
    create_table :medicalitems do |t|
      t.string :name
      t.text :des
      t.text :remark

      t.timestamps
    end
  end
end
