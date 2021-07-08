class AddTimestampToLogs < ActiveRecord::Migration[6.0]
  def change
    add_column :logs, :created_at, :datetime, null: true
    add_column :logs, :updated_at, :datetime, null: true
  end
end
