class AddDensityToProvinces < ActiveRecord::Migration[6.0]
  def change
    add_column :provinces, :population, :integer
    add_column :provinces, :density, :string
  end
end
