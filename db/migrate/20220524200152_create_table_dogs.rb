class CreateTableDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :table_dogs do |t|
      t.integer :id_dog
      t.string :nombre
      t.string :raza
      t.integer :peso
      t.date :fecha_nac
      t.string :vacunas

      t.timestamps
    end
  end
end
