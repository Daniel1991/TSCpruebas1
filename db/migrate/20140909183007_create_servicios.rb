class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.date :fecha
      t.integer :pedidoN
      t.string :nombre
      t.string :identificacion
      t.string :email
      t.string :direccion
      t.string :telefono
      t.references :tipoServicio, index: true
      t.string :disponibilidad
      t.text :descripcion

      t.timestamps
    end
  end
end
