class ChangeType < ActiveRecord::Migration[6.0]
  def change
    change_column :logs, :tipo_ataque, :string
  end
end
