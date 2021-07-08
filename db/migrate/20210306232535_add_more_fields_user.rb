class AddMoreFieldsUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fecha_nacimiento, :datetime
    add_column :users, :cedula, :string
    add_column :users, :direccion_domicilio, :string
  end
end
