class AddQueries < ActiveRecord::Migration[6.0]
  def change
    create_table :queries do |t|
      t.string :nombre_query
      t.string :comando
      t.string :duracion
    end
  end
end
